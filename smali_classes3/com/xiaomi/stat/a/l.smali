.class public Lcom/xiaomi/stat/a/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/a/l$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/xiaomi/stat/al;

.field public e:J

.field public f:Ljava/lang/String;

.field public g:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/stat/a/l;
    .locals 5

    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    const-string v1, "mistat_dau"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    const-string v1, "mistat_basic"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string v1, "track"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/stat/a/l;->e:J

    new-instance v1, Lcom/xiaomi/stat/al;

    invoke-direct {v1}, Lcom/xiaomi/stat/al;-><init>()V

    invoke-static {}, Lcom/xiaomi/stat/b;->r()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/xiaomi/stat/b;->f(Z)V

    :cond_0
    const-string v3, "fo"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/xiaomi/stat/am;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ia"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "i1"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ib"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "i2"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "md"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/stat/d/e;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ii"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mcm"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mcs"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bm"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bs"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "aa"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ai"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "od"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/stat/b/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "oa"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/stat/b/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "va"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/al;

    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    return-object v0
.end method

.method public static a(I)Lcom/xiaomi/stat/a/l;
    .locals 3

    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    const-string v1, "mistat_app_update"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    const-string v1, "mistat_basic"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string v1, "track"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/stat/a/l;->e:J

    new-instance v1, Lcom/xiaomi/stat/al;

    invoke-direct {v1}, Lcom/xiaomi/stat/al;-><init>()V

    const-string v2, "pvr"

    invoke-virtual {v1, v2, p0}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/al;

    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    return-object v0
.end method

.method public static a(IIJJ)Lcom/xiaomi/stat/a/l;
    .locals 3

    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    const-string v1, "mistat_page_monitor"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    const-string v1, "mistat_basic"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string v1, "track"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/stat/a/l;->e:J

    new-instance v1, Lcom/xiaomi/stat/al;

    invoke-direct {v1}, Lcom/xiaomi/stat/al;-><init>()V

    const-string v2, "rc"

    invoke-virtual {v1, v2, p0}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    const-string p0, "pc"

    invoke-virtual {v1, p0, p1}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    const-string p0, "sts"

    invoke-virtual {v1, p0, p2, p3}, Lcom/xiaomi/stat/MiStatParams;->putLong(Ljava/lang/String;J)V

    const-string p0, "ets"

    invoke-virtual {v1, p0, p4, p5}, Lcom/xiaomi/stat/MiStatParams;->putLong(Ljava/lang/String;J)V

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/al;

    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    return-object v0
.end method

.method public static a(Lcom/xiaomi/stat/HttpEvent;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;
    .locals 5

    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    const-string v1, "mistat_net_monitor"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    const-string v1, "mistat_network"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string v1, "track"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/stat/a/l;->e:J

    new-instance v1, Lcom/xiaomi/stat/al;

    invoke-direct {v1}, Lcom/xiaomi/stat/al;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/stat/HttpEvent;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ur"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/stat/HttpEvent;->getTimeCost()J

    move-result-wide v2

    const-string v4, "dt"

    invoke-virtual {v1, v4, v2, v3}, Lcom/xiaomi/stat/MiStatParams;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/xiaomi/stat/HttpEvent;->getResponseCode()I

    move-result v2

    const-string v3, "rc"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/xiaomi/stat/HttpEvent;->getNetFlow()J

    move-result-wide v2

    const-string v4, "nf"

    invoke-virtual {v1, v4, v2, v3}, Lcom/xiaomi/stat/MiStatParams;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/xiaomi/stat/HttpEvent;->getExceptionName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ecn"

    invoke-virtual {v1, v2, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/al;

    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    invoke-static {v0, p1}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/xiaomi/stat/MiStatParams;ZLjava/lang/String;)Lcom/xiaomi/stat/a/l;
    .locals 3

    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    const-string v1, "profile_set"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/stat/a/l;->e:J

    new-instance v1, Lcom/xiaomi/stat/al;

    invoke-direct {v1, p0}, Lcom/xiaomi/stat/al;-><init>(Lcom/xiaomi/stat/MiStatParams;)V

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/al;

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/xiaomi/stat/a/l;->g:Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    :goto_0
    invoke-static {v0, p2}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/xiaomi/stat/NetAvailableEvent;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;
    .locals 5

    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    const-string v1, "mistat_net_event"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    const-string v1, "mistat_net_available"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string v1, "track"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/stat/a/l;->e:J

    new-instance v1, Lcom/xiaomi/stat/al;

    invoke-direct {v1}, Lcom/xiaomi/stat/al;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/stat/NetAvailableEvent;->getFlag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fg"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/stat/NetAvailableEvent;->getResponseCode()I

    move-result v2

    const-string v3, "rsc"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/xiaomi/stat/NetAvailableEvent;->getStatusCode()I

    move-result v2

    const-string v3, "sc"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/xiaomi/stat/NetAvailableEvent;->getException()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ec"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/stat/NetAvailableEvent;->getResultType()I

    move-result v2

    const-string v3, "rt"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/xiaomi/stat/NetAvailableEvent;->getRequestStartTime()J

    move-result-wide v2

    const-string v4, "rst"

    invoke-virtual {v1, v4, v2, v3}, Lcom/xiaomi/stat/MiStatParams;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Lcom/xiaomi/stat/am;->a()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/xiaomi/stat/d/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "UNKNOWN"

    :goto_0
    const-string v4, "n"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/xiaomi/stat/d/p;->l(Landroid/content/Context;)F

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/stat/NetAvailableEvent;->getRetryCount()I

    move-result v2

    const-string v3, "rc"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/xiaomi/stat/NetAvailableEvent;->getExt()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ext"

    invoke-virtual {v1, v2, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/al;

    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    invoke-static {v0, p1}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/xiaomi/stat/al;)Lcom/xiaomi/stat/a/l;
    .locals 3

    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    const-string v1, "mistat_delete_event"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    const-string v1, "mistat_basic"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string v1, "track"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/stat/a/l;->e:J

    iput-object p0, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/al;

    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaomi/stat/a/l;
    .locals 4

    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "mistat_signout"

    goto :goto_0

    :cond_0
    const-string v2, "mistat_signin"

    :goto_0
    iput-object v2, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    const-string v2, "mistat_basic"

    iput-object v2, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string v2, "track_signin"

    iput-object v2, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaomi/stat/a/l;->e:J

    new-instance v2, Lcom/xiaomi/stat/al;

    invoke-direct {v2}, Lcom/xiaomi/stat/al;-><init>()V

    if-nez v1, :cond_1

    const-string v1, "ud"

    invoke-virtual {v2, v1, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-object v2, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/al;

    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;JJ)Lcom/xiaomi/stat/a/l;
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v7}, Lcom/xiaomi/stat/a/l;->a(Ljava/lang/String;JJZLcom/xiaomi/stat/MiStatParams;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;JJLcom/xiaomi/stat/MiStatParams;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/xiaomi/stat/a/l;->a(Ljava/lang/String;JJZLcom/xiaomi/stat/MiStatParams;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;JJZLcom/xiaomi/stat/MiStatParams;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;
    .locals 3

    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    const-string v1, "mistat_pa"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    if-eqz p5, :cond_0

    const-string v1, "mistat_basic"

    goto :goto_0

    :cond_0
    const-string v1, "mistat_user_page"

    :goto_0
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string v1, "track"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/stat/a/l;->e:J

    new-instance v1, Lcom/xiaomi/stat/al;

    invoke-direct {v1, p6}, Lcom/xiaomi/stat/al;-><init>(Lcom/xiaomi/stat/MiStatParams;)V

    const-string p6, "pg"

    invoke-virtual {v1, p6, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "bt"

    invoke-virtual {v1, p0, p1, p2}, Lcom/xiaomi/stat/MiStatParams;->putLong(Ljava/lang/String;J)V

    const-string p0, "et"

    invoke-virtual {v1, p0, p3, p4}, Lcom/xiaomi/stat/MiStatParams;->putLong(Ljava/lang/String;J)V

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/al;

    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    if-nez p5, :cond_1

    invoke-static {v0, p7}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;Ljava/lang/String;Z)Lcom/xiaomi/stat/a/l;
    .locals 1

    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    iput-object p0, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string p0, "track"

    iput-object p0, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide p0

    iput-wide p0, v0, Lcom/xiaomi/stat/a/l;->e:J

    new-instance p0, Lcom/xiaomi/stat/al;

    invoke-direct {p0, p2}, Lcom/xiaomi/stat/al;-><init>(Lcom/xiaomi/stat/MiStatParams;)V

    iput-object p0, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/al;

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/xiaomi/stat/a/l;->g:Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    :goto_0
    invoke-static {v0, p3}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;
    .locals 3

    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    iput-object p0, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    const-string p0, "mistat_plain_text"

    iput-object p0, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string p0, "track"

    iput-object p0, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/stat/a/l;->e:J

    new-instance p0, Lcom/xiaomi/stat/al;

    invoke-direct {p0}, Lcom/xiaomi/stat/al;-><init>()V

    const-string v1, "ve"

    invoke-virtual {p0, v1, p1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/al;

    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    invoke-static {v0, p2}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;ZLjava/lang/String;)Lcom/xiaomi/stat/a/l;
    .locals 3

    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    const-string v1, "mistat_app_exception"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    const-string v1, "mistat_crash"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string v1, "track"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/stat/a/l;->e:J

    new-instance v1, Lcom/xiaomi/stat/al;

    invoke-direct {v1}, Lcom/xiaomi/stat/al;-><init>()V

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/al;

    const-string v2, "ek"

    invoke-virtual {v1, v2, p1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "et"

    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    new-instance p2, Ljava/io/PrintWriter;

    invoke-direct {p2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sk"

    invoke-virtual {v1, p2, p1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "em"

    invoke-virtual {v1, p1, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    invoke-static {v0, p3}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Lcom/xiaomi/stat/a/l;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stat/b;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/xiaomi/stat/a/l;->g:Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/xiaomi/stat/a/l;->g:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/stat/a/l;->g:Z

    :goto_0
    return-void
.end method

.method private static a(Lcom/xiaomi/stat/a/l;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/xiaomi/stat/a/l;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/al;

    const-string v0, "mi_sai"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
