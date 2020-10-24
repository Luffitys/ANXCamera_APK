.class Lnet/majorkernelpanic/streaming/Session$13;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/majorkernelpanic/streaming/Session;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$reason:I

.field final synthetic val$streamType:I


# direct methods
.method constructor <init>(Lnet/majorkernelpanic/streaming/Session;IILjava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/Session$13;->this$0:Lnet/majorkernelpanic/streaming/Session;

    iput p2, p0, Lnet/majorkernelpanic/streaming/Session$13;->val$reason:I

    iput p3, p0, Lnet/majorkernelpanic/streaming/Session$13;->val$streamType:I

    iput-object p4, p0, Lnet/majorkernelpanic/streaming/Session$13;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session$13;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/Session;->access$300(Lnet/majorkernelpanic/streaming/Session;)Lnet/majorkernelpanic/streaming/Session$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session$13;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/Session;->access$300(Lnet/majorkernelpanic/streaming/Session;)Lnet/majorkernelpanic/streaming/Session$Callback;

    move-result-object v0

    iget v1, p0, Lnet/majorkernelpanic/streaming/Session$13;->val$reason:I

    iget v2, p0, Lnet/majorkernelpanic/streaming/Session$13;->val$streamType:I

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/Session$13;->val$e:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2, p0}, Lnet/majorkernelpanic/streaming/Session$Callback;->onSessionError(IILjava/lang/Exception;)V

    :cond_0
    return-void
.end method
