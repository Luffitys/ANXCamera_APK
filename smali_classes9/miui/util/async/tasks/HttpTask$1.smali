.class Lmiui/util/async/tasks/HttpTask$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/net/http/HttpSession$ProgressListener;


# instance fields
.field final synthetic this$0:Lmiui/util/async/tasks/HttpTask;


# direct methods
.method constructor <init>(Lmiui/util/async/tasks/HttpTask;)V
    .locals 0

    iput-object p1, p0, Lmiui/util/async/tasks/HttpTask$1;->this$0:Lmiui/util/async/tasks/HttpTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .locals 5

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    mul-long/2addr p1, v0

    long-to-float p1, p1

    const/high16 p2, 0x5f000000

    div-float/2addr p1, p2

    float-to-int p1, p1

    int-to-long p3, p1

    mul-long/2addr v0, p3

    long-to-float p1, v0

    div-float/2addr p1, p2

    float-to-int p1, p1

    int-to-long p1, p1

    move-wide v3, p1

    move-wide p1, p3

    move-wide p3, v3

    :cond_0
    iget-object p0, p0, Lmiui/util/async/tasks/HttpTask$1;->this$0:Lmiui/util/async/tasks/HttpTask;

    long-to-int p1, p1

    long-to-int p2, p3

    invoke-virtual {p0, p1, p2}, Lmiui/util/async/Task;->publishProgress(II)V

    return-void
.end method
