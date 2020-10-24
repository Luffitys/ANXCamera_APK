.class Lnet/majorkernelpanic/streaming/Session$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/majorkernelpanic/streaming/Session;


# direct methods
.method constructor <init>(Lnet/majorkernelpanic/streaming/Session;)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/Session$9;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session$9;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/Session;->access$300(Lnet/majorkernelpanic/streaming/Session;)Lnet/majorkernelpanic/streaming/Session$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/Session$9;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {p0}, Lnet/majorkernelpanic/streaming/Session;->access$300(Lnet/majorkernelpanic/streaming/Session;)Lnet/majorkernelpanic/streaming/Session$Callback;

    move-result-object p0

    invoke-interface {p0}, Lnet/majorkernelpanic/streaming/Session$Callback;->onPreviewStarted()V

    :cond_0
    return-void
.end method
