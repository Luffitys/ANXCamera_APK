.class Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$5;
.super Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$CloseOperation;
.source ""


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;

.field final synthetic val$output:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;Ljava/io/Closeable;ZLjava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$5;->this$0:Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;

    iput-object p4, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$5;->val$output:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3}, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$CloseOperation;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method protected run()Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$5;->this$0:Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$5;->val$output:Ljava/io/OutputStream;

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;->receive(Ljava/io/OutputStream;)Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic run()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$5;->run()Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;

    move-result-object p0

    return-object p0
.end method
