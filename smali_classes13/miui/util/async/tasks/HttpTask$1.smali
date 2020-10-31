.class Lmiui/util/async/tasks/HttpTask$1;
.super Ljava/lang/Object;
.source "HttpTask.java"

# interfaces
.implements Lmiui/net/http/HttpSession$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/async/tasks/HttpTask;->request()Lmiui/net/http/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/async/tasks/HttpTask;


# direct methods
.method constructor <init>(Lmiui/util/async/tasks/HttpTask;)V
    .registers 2

    iput-object p1, p0, Lmiui/util/async/tasks/HttpTask$1;->this$0:Lmiui/util/async/tasks/HttpTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .registers 9

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_14

    mul-long v2, p1, v0

    long-to-float v2, v2

    const/high16 v3, 0x5f000000

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-long p1, v2

    mul-long/2addr v0, p1

    long-to-float v0, v0

    div-float/2addr v0, v3

    float-to-int v0, v0

    int-to-long p3, v0

    :cond_14
    iget-object v0, p0, Lmiui/util/async/tasks/HttpTask$1;->this$0:Lmiui/util/async/tasks/HttpTask;

    long-to-int v1, p1

    long-to-int v2, p3

    invoke-virtual {v0, v1, v2}, Lmiui/util/async/tasks/HttpTask;->publishProgress(II)V

    return-void
.end method
