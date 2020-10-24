.class Lnet/majorkernelpanic/streaming/Session$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/majorkernelpanic/streaming/Session;


# direct methods
.method constructor <init>(Lnet/majorkernelpanic/streaming/Session;)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/Session$15;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session$15;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/Session;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session$15;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/Session;->getBitrate()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lnet/majorkernelpanic/streaming/Session;->access$400(Lnet/majorkernelpanic/streaming/Session;J)V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session$15;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/Session;->access$600(Lnet/majorkernelpanic/streaming/Session;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/Session$15;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {p0}, Lnet/majorkernelpanic/streaming/Session;->access$500(Lnet/majorkernelpanic/streaming/Session;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/Session$15;->this$0:Lnet/majorkernelpanic/streaming/Session;

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lnet/majorkernelpanic/streaming/Session;->access$400(Lnet/majorkernelpanic/streaming/Session;J)V

    :goto_0
    return-void
.end method
