.class Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$10;
.super Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$FlushOperation;
.source ""


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;

.field final synthetic val$input:Ljava/io/Reader;

.field final synthetic val$writer:Ljava/io/Writer;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;Ljava/io/Flushable;Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$10;->this$0:Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;

    iput-object p3, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$10;->val$input:Ljava/io/Reader;

    iput-object p4, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$10;->val$writer:Ljava/io/Writer;

    invoke-direct {p0, p2}, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$FlushOperation;-><init>(Ljava/io/Flushable;)V

    return-void
.end method


# virtual methods
.method protected run()Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;
    .locals 2

    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$10;->this$0:Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;

    iget-object v1, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$10;->val$input:Ljava/io/Reader;

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$10;->val$writer:Ljava/io/Writer;

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;->copy(Ljava/io/Reader;Ljava/io/Writer;)Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic run()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$10;->run()Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;

    move-result-object p0

    return-object p0
.end method
