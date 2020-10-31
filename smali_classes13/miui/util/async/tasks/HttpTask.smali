.class public abstract Lmiui/util/async/tasks/HttpTask;
.super Lmiui/util/async/Task;
.source "HttpTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/async/tasks/HttpTask$Method;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/util/async/Task<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mMethod:Lmiui/util/async/tasks/HttpTask$Method;

.field private final mParams:Lmiui/net/http/HttpRequestParams;

.field private mProgressListener:Lmiui/net/http/HttpSession$ProgressListener;

.field private final mSession:Lmiui/net/http/HttpSession;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lmiui/util/async/tasks/HttpTask$Method;->Get:Lmiui/util/async/tasks/HttpTask$Method;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1, v1}, Lmiui/util/async/tasks/HttpTask;-><init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lmiui/net/http/HttpSession;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lmiui/util/async/tasks/HttpTask$Method;->Get:Lmiui/util/async/tasks/HttpTask$Method;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lmiui/util/async/tasks/HttpTask;-><init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/net/http/HttpSession;",
            "Lmiui/util/async/tasks/HttpTask$Method;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lmiui/util/async/Task;-><init>()V

    if-nez p1, :cond_9

    invoke-static {}, Lmiui/net/http/HttpSession;->getDefault()Lmiui/net/http/HttpSession;

    move-result-object p1

    :cond_9
    iput-object p1, p0, Lmiui/util/async/tasks/HttpTask;->mSession:Lmiui/net/http/HttpSession;

    iput-object p2, p0, Lmiui/util/async/tasks/HttpTask;->mMethod:Lmiui/util/async/tasks/HttpTask$Method;

    sget-object v0, Lmiui/util/async/tasks/HttpTask$Method;->Get:Lmiui/util/async/tasks/HttpTask$Method;

    if-ne p2, v0, :cond_66

    if-eqz p4, :cond_60

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_60

    new-instance v0, Lmiui/net/http/HttpRequestParams;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    invoke-direct {v0, v1}, Lmiui/net/http/HttpRequestParams;-><init>([Ljava/lang/Object;)V

    const/16 v1, 0x3f

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_45

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmiui/net/http/HttpRequestParams;->getParamString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5d

    :cond_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmiui/net/http/HttpRequestParams;->getParamString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5d
    iput-object v1, p0, Lmiui/util/async/tasks/HttpTask;->mUrl:Ljava/lang/String;

    goto :goto_62

    :cond_60
    iput-object p3, p0, Lmiui/util/async/tasks/HttpTask;->mUrl:Ljava/lang/String;

    :goto_62
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/async/tasks/HttpTask;->mParams:Lmiui/net/http/HttpRequestParams;

    goto :goto_72

    :cond_66
    iput-object p3, p0, Lmiui/util/async/tasks/HttpTask;->mUrl:Ljava/lang/String;

    new-instance v0, Lmiui/net/http/HttpRequestParams;

    invoke-direct {v0}, Lmiui/net/http/HttpRequestParams;-><init>()V

    iput-object v0, p0, Lmiui/util/async/tasks/HttpTask;->mParams:Lmiui/net/http/HttpRequestParams;

    invoke-virtual {v0, p4}, Lmiui/net/http/HttpRequestParams;->add(Ljava/util/Map;)Lmiui/net/http/HttpRequestParams;

    :goto_72
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/util/async/tasks/HttpTask;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected final request()Lmiui/net/http/HttpResponse;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/async/tasks/HttpTask;->mProgressListener:Lmiui/net/http/HttpSession$ProgressListener;

    if-nez v0, :cond_b

    new-instance v0, Lmiui/util/async/tasks/HttpTask$1;

    invoke-direct {v0, p0}, Lmiui/util/async/tasks/HttpTask$1;-><init>(Lmiui/util/async/tasks/HttpTask;)V

    iput-object v0, p0, Lmiui/util/async/tasks/HttpTask;->mProgressListener:Lmiui/net/http/HttpSession$ProgressListener;

    :cond_b
    const/4 v0, 0x0

    sget-object v1, Lmiui/util/async/tasks/HttpTask$2;->$SwitchMap$miui$util$async$tasks$HttpTask$Method:[I

    iget-object v2, p0, Lmiui/util/async/tasks/HttpTask;->mMethod:Lmiui/util/async/tasks/HttpTask$Method;

    invoke-virtual {v2}, Lmiui/util/async/tasks/HttpTask$Method;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2b

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1e

    goto :goto_38

    :cond_1e
    iget-object v1, p0, Lmiui/util/async/tasks/HttpTask;->mSession:Lmiui/net/http/HttpSession;

    iget-object v2, p0, Lmiui/util/async/tasks/HttpTask;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Lmiui/util/async/tasks/HttpTask;->mParams:Lmiui/net/http/HttpRequestParams;

    iget-object v5, p0, Lmiui/util/async/tasks/HttpTask;->mProgressListener:Lmiui/net/http/HttpSession$ProgressListener;

    invoke-virtual {v1, v2, v3, v4, v5}, Lmiui/net/http/HttpSession;->post(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;

    move-result-object v0

    goto :goto_38

    :cond_2b
    iget-object v1, p0, Lmiui/util/async/tasks/HttpTask;->mSession:Lmiui/net/http/HttpSession;

    iget-object v2, p0, Lmiui/util/async/tasks/HttpTask;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Lmiui/util/async/tasks/HttpTask;->mParams:Lmiui/net/http/HttpRequestParams;

    iget-object v5, p0, Lmiui/util/async/tasks/HttpTask;->mProgressListener:Lmiui/net/http/HttpSession$ProgressListener;

    invoke-virtual {v1, v2, v3, v4, v5}, Lmiui/net/http/HttpSession;->get(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;

    move-result-object v0

    nop

    :goto_38
    return-object v0
.end method
