package game.scene.services;

import com.isnowfox.service.AbstractAsyncService;
import game.scene.model.User;

/**
 * 数据库异步执行
 *
 * @author zuoge85 on 14-1-8.
 */
public final class AsyncDbService extends AbstractAsyncService {
    //    private static final Logger log = LoggerFactory.getLogger(AsyncDbService.class);
    public AsyncDbService(int threadNums) {
        super(threadNums, threadNums);
    }


    public void excuete(User user, Runnable task) {
        submit(user.getUserId(), task);
    }
    public void excueteRoom(int roomId, Runnable task) {
        submit(roomId, task);
    }

    public void excuete(Runnable task) {
        submit(task);
    }
}
