.class Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$7;
.super Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$CloseOperation;
.source ""


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;

.field final synthetic val$reader:Ljava/io/BufferedReader;

.field final synthetic val$writer:Ljava/io/Writer;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/io/Writer;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$7;->this$0:Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;

    iput-object p4, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$7;->val$reader:Ljava/io/BufferedReader;

    iput-object p5, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$7;->val$writer:Ljava/io/Writer;

    invoke-direct {p0, p2, p3}, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$CloseOperation;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method public run()Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;
    .locals 2

    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$7;->this$0:Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;

    iget-object v1, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$7;->val$reader:Ljava/io/BufferedReader;

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$7;->val$writer:Ljava/io/Writer;

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;->copy(Ljava/io/Reader;Ljava/io/Writer;)Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$7;->run()Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;

    move-result-object p0

    return-object p0
.end method
