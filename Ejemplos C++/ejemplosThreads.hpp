
#include <thread>
#include <atomic>
#include <vector>
#include <queue>
#ifndef __THREADS_WORKERS_H__
#define __THREADS_WORKERS_H__

//Ejemplos de threads

class ThreadPool
{
private:
    std::mutex               m_queue_mutex; // para controlar la cola de threads
    std::mutex               m_results_mutex; //resultados
    std::vector<std::thread> m_threads;
    unsigned int             m_thread_count;
public:
    ThreadPool(unsigned int pool_size=std::thread::hardware_concurrency()) :
            m_queue_mutex   (),
            m_thread_count  (pool_size),
            m_threads       ()
    {

    };
    template <class F, class R, class A>
    std::vector<R> map(const F& f, std::vector<A> args)
    {
        std::queue <std::function<R()>> tasks; //Cola de tareas para los threads
        std::vector<R> results; 
        for(auto& arg: args)
        {
            auto task = [&f, &arg]()
            {
                return f(arg);
            };
            tasks.push(std::move(task));
        }
        for (unsigned int i = 0; i < m_thread_count; ++i)
        {
            std::thread t
            (
                    [this, &tasks, &results]()
                    {
                        while(true)
                        {
                            if(m_queue_mutex.try_lock()) //bloquea la cola
                            {
                                if (!tasks.empty()) {//intenta acceder, si otro hilo entro y bloqueó devuelve false
                                    auto task = tasks.front();
                                    tasks.pop();
                                    m_queue_mutex.unlock();
                                    auto res = task();
                                    std::lock_guard<std::mutex> resutls_lock(m_results_mutex);
                                    results.push_back(res);
                                }
                                else
                                {
                                    m_queue_mutex.unlock(); //Desbloquea el recurso
                                    break;
                                }
                            }
                        }

                    }
            );
            m_threads.push_back(std::move(t)); //se guardan los threads activos
        }
        for(auto& t: m_threads) t.join();
        return results;
    }

};
#endif
