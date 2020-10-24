.class Lnet/majorkernelpanic/streaming/Session$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/majorkernelpanic/streaming/Session;

.field final synthetic val$bitrate:J


# direct methods
.method constructor <init>(Lnet/majorkernelpanic/streaming/Session;J)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/Session$14;->this$0:Lnet/majorkernelpanic/streaming/Session;

    iput-wide p2, p0, Lnet/majorkernelpanic/streaming/Session$14;->val$bitrate:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session$14;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/Session;->access$300(Lnet/majorkernelpanic/streaming/Session;)Lnet/majorkernelpanic/streaming/Session$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session$14;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/Session;->access$300(Lnet/majorkernelpanic/streaming/Session;)Lnet/majorkernelpanic/streaming/Session$Callback;

    move-result-object v0

    iget-wide v1, p0, Lnet/majorkernelpanic/streaming/Session$14;->val$bitrate:J

    invoke-interface {v0, v1, v2}, Lnet/majorkernelpanic/streaming/Session$Callback;->onBitrateUpdate(J)V

    :cond_0
    return-void
.end method
