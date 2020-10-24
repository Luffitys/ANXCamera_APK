.class Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field final synthetic this$0:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

.field final synthetic val$listener:Lcom/android/camera/resource/ResponseListener;

.field final synthetic val$t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;Lcom/android/camera/resource/ResponseListener;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;->this$0:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    iput-object p2, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;->val$listener:Lcom/android/camera/resource/ResponseListener;

    iput-object p3, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;->val$t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "download async failed with exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadRequest"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;->val$listener:Lcom/android/camera/resource/ResponseListener;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0, p2}, Lcom/android/camera/resource/ResponseListener;->onResponseError(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 12

    const-string p1, "DownloadRequest"

    const-string v0, "onResponse"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2000

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-array v3, v0, [B

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;->this$0:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    invoke-static {v9}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->access$100(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;->this$0:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    invoke-static {v10}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->access$100(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :goto_0
    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v2, v3, v9, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    invoke-virtual {v8, v3, v9, v10}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v9, v10

    add-long/2addr v6, v9

    iget-object v9, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;->val$listener:Lcom/android/camera/resource/ResponseListener;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;->val$listener:Lcom/android/camera/resource/ResponseListener;

    invoke-interface {v9, v6, v7, v4, v5}, Lcom/android/camera/resource/ResponseListener;->onResponseProgress(JJ)V

    :cond_2
    iget-object v9, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;->this$0:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    invoke-static {v9}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->access$000(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;)Lio/reactivex/ObservableEmitter;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;->this$0:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    invoke-static {v9}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->access$000(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;)Lio/reactivex/ObservableEmitter;

    move-result-object v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;->this$0:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    invoke-static {v0}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->access$000(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;)Lio/reactivex/ObservableEmitter;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;->this$0:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    invoke-static {v0}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->access$000(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;)Lio/reactivex/ObservableEmitter;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;->this$0:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    invoke-static {v0}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->access$000(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;)Lio/reactivex/ObservableEmitter;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/Emitter;->onComplete()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    if-eqz v2, :cond_5

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    :try_start_4
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    iget-object p1, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;->val$listener:Lcom/android/camera/resource/ResponseListener;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;->this$0:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    invoke-static {p1, v1}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->access$202(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;Lokhttp3/Call;)Lokhttp3/Call;

    iget-object p1, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;->val$listener:Lcom/android/camera/resource/ResponseListener;

    iget-object p0, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;->val$t:Ljava/lang/Object;

    invoke-interface {p1, p0, v9}, Lcom/android/camera/resource/ResponseListener;->onResponse(Ljava/lang/Object;Z)V

    goto/16 :goto_7

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v8, v1

    :goto_3
    move-object v1, v2

    goto/16 :goto_8

    :catch_3
    move-exception v0

    move-object v8, v1

    :goto_4
    move-object v1, v2

    goto :goto_5

    :catchall_2
    move-exception p0

    move-object v8, v1

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v8, v1

    :goto_5
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download async failed with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;->this$0:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    invoke-static {v2}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->access$100(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_6
    iget-object p1, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;->val$listener:Lcom/android/camera/resource/ResponseListener;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;->val$listener:Lcom/android/camera/resource/ResponseListener;

    const/4 v2, 0x3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0, p2}, Lcom/android/camera/resource/ResponseListener;->onResponseError(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_7
    iget-object p1, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;->this$0:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    invoke-static {p1}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->access$000(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;)Lio/reactivex/ObservableEmitter;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;->this$0:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    invoke-static {p0}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->access$000(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;)Lio/reactivex/ObservableEmitter;

    move-result-object p0

    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_8
    if-eqz v1, :cond_9

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_6
    if-eqz v8, :cond_a

    :try_start_7
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_7
    return-void

    :catchall_3
    move-exception p0

    :goto_8
    if-eqz v1, :cond_b

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_9

    :catch_7
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_9
    if-eqz v8, :cond_c

    :try_start_9
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_a

    :catch_8
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_a
    throw p0
.end method
