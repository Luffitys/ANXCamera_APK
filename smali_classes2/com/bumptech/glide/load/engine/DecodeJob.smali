.class Lcom/bumptech/glide/load/engine/DecodeJob;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/f$a;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lcom/bumptech/glide/util/a/d$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/DecodeJob$Stage;,
        Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;,
        Lcom/bumptech/glide/load/engine/DecodeJob$d;,
        Lcom/bumptech/glide/load/engine/DecodeJob$a;,
        Lcom/bumptech/glide/load/engine/DecodeJob$c;,
        Lcom/bumptech/glide/load/engine/DecodeJob$e;,
        Lcom/bumptech/glide/load/engine/DecodeJob$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/f$a;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/bumptech/glide/load/engine/DecodeJob<",
        "*>;>;",
        "Lcom/bumptech/glide/util/a/d$c;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DecodeJob"


# instance fields
.field private final Ce:Lcom/bumptech/glide/load/engine/DecodeJob$d;

.field private Eb:Lcom/bumptech/glide/e;

.field private Fe:Lcom/bumptech/glide/load/engine/o;

.field private final Pe:Lcom/bumptech/glide/load/engine/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/g<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final Qe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final Re:Lcom/bumptech/glide/util/a/g;

.field private final Se:Lcom/bumptech/glide/load/engine/DecodeJob$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob$c<",
            "*>;"
        }
    .end annotation
.end field

.field private final Te:Lcom/bumptech/glide/load/engine/DecodeJob$e;

.field private Ue:Lcom/bumptech/glide/load/engine/s;

.field private volatile Vd:Z

.field private Ve:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

.field private We:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

.field private Xe:J

.field private Ye:Z

.field private Ze:Ljava/lang/Thread;

.field private _e:Lcom/bumptech/glide/load/c;

.field private af:Lcom/bumptech/glide/load/c;

.field private bf:Ljava/lang/Object;

.field private callback:Lcom/bumptech/glide/load/engine/DecodeJob$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob$a<",
            "TR;>;"
        }
    .end annotation
.end field

.field private cf:Lcom/bumptech/glide/load/DataSource;

.field private df:Lcom/bumptech/glide/load/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a/d<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile ef:Lcom/bumptech/glide/load/engine/f;

.field private volatile ff:Z

.field private height:I

.field private model:Ljava/lang/Object;

.field private options:Lcom/bumptech/glide/load/g;

.field private order:I

.field private final pool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;>;"
        }
    .end annotation
.end field

.field private priority:Lcom/bumptech/glide/Priority;

.field private signature:Lcom/bumptech/glide/load/c;

.field private width:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob$d;Landroid/support/v4/util/Pools$Pool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob$d;",
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/engine/g;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/g;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Pe:Lcom/bumptech/glide/load/engine/g;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Qe:Ljava/util/List;

    invoke-static {}, Lcom/bumptech/glide/util/a/g;->newInstance()Lcom/bumptech/glide/util/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Re:Lcom/bumptech/glide/util/a/g;

    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Se:Lcom/bumptech/glide/load/engine/DecodeJob$c;

    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Te:Lcom/bumptech/glide/load/engine/DecodeJob$e;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ce:Lcom/bumptech/glide/load/engine/DecodeJob$d;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->pool:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/a/d;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/A;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/a/d<",
            "*>;TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")",
            "Lcom/bumptech/glide/load/engine/A<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1}, Lcom/bumptech/glide/load/a/d;->cleanup()V

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/util/e;->Gh()J

    move-result-wide v0

    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/A;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v2, 0x2

    invoke-static {p3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoded result "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {p1}, Lcom/bumptech/glide/load/a/d;->cleanup()V

    return-object p2

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lcom/bumptech/glide/load/a/d;->cleanup()V

    throw p0
.end method

.method private a(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/A;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")",
            "Lcom/bumptech/glide/load/engine/A<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Pe:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/g;->c(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/x;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/engine/x;)Lcom/bumptech/glide/load/engine/A;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/engine/x;)Lcom/bumptech/glide/load/engine/A;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "ResourceType:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lcom/bumptech/glide/load/engine/x<",
            "TData;TResourceType;TR;>;)",
            "Lcom/bumptech/glide/load/engine/A<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/DecodeJob;->b(Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/g;

    move-result-object v2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Eb:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->k(Ljava/lang/Object;)Lcom/bumptech/glide/load/a/e;

    move-result-object p1

    :try_start_0
    iget v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    iget v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    new-instance v5, Lcom/bumptech/glide/load/engine/DecodeJob$b;

    invoke-direct {v5, p0, p2}, Lcom/bumptech/glide/load/engine/DecodeJob$b;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/DataSource;)V

    move-object v0, p3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/x;->a(Lcom/bumptech/glide/load/a/e;Lcom/bumptech/glide/load/g;IILcom/bumptech/glide/load/engine/i$a;)Lcom/bumptech/glide/load/engine/A;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lcom/bumptech/glide/load/a/e;->cleanup()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lcom/bumptech/glide/load/a/e;->cleanup()V

    throw p0
.end method

.method private a(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;
    .locals 2

    sget-object v0, Lcom/bumptech/glide/load/engine/h;->Je:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Fe:Lcom/bumptech/glide/load/engine/o;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/o;->og()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->uq:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->uq:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized stage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sget-object p0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    return-object p0

    :cond_3
    iget-boolean p0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ye:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->SOURCE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    :goto_1
    return-object p0

    :cond_5
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Fe:Lcom/bumptech/glide/load/engine/o;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/o;->ng()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->vq:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->vq:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private a(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/bumptech/glide/util/e;->g(J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", load key: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ue:Lcom/bumptech/glide/load/engine/s;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", thread: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DecodeJob"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/g;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/g;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/o;->aj:Lcom/bumptech/glide/load/f;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/g;->a(Lcom/bumptech/glide/load/f;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v1, Lcom/bumptech/glide/load/DataSource;->iq:Lcom/bumptech/glide/load/DataSource;

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Pe:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/g;->jg()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    new-instance v0, Lcom/bumptech/glide/load/g;

    invoke-direct {v0}, Lcom/bumptech/glide/load/g;-><init>()V

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/g;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/g;->b(Lcom/bumptech/glide/load/g;)V

    sget-object p0, Lcom/bumptech/glide/load/resource/bitmap/o;->aj:Lcom/bumptech/glide/load/f;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/load/g;->a(Lcom/bumptech/glide/load/f;Ljava/lang/Object;)Lcom/bumptech/glide/load/g;

    :cond_3
    return-object v0
.end method

.method private b(Lcom/bumptech/glide/load/engine/A;Lcom/bumptech/glide/load/DataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/A<",
            "TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->lk()V

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$a;

    invoke-interface {p0, p1, p2}, Lcom/bumptech/glide/load/engine/DecodeJob$a;->a(Lcom/bumptech/glide/load/engine/A;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method private c(Lcom/bumptech/glide/load/engine/A;Lcom/bumptech/glide/load/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/A<",
            "TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Lcom/bumptech/glide/load/engine/v;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/load/engine/v;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/v;->initialize()V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Se:Lcom/bumptech/glide/load/engine/DecodeJob$c;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeJob$c;->kg()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/bumptech/glide/load/engine/z;->f(Lcom/bumptech/glide/load/engine/A;)Lcom/bumptech/glide/load/engine/z;

    move-result-object p1

    move-object v0, p1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/engine/DecodeJob;->b(Lcom/bumptech/glide/load/engine/A;Lcom/bumptech/glide/load/DataSource;)V

    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ENCODE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ve:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    :try_start_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Se:Lcom/bumptech/glide/load/engine/DecodeJob$c;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/DecodeJob$c;->kg()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Se:Lcom/bumptech/glide/load/engine/DecodeJob$c;

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ce:Lcom/bumptech/glide/load/engine/DecodeJob$d;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/g;

    invoke-virtual {p1, p2, v1}, Lcom/bumptech/glide/load/engine/DecodeJob$c;->a(Lcom/bumptech/glide/load/engine/DecodeJob$d;Lcom/bumptech/glide/load/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/z;->unlock()V

    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->lg()V

    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/z;->unlock()V

    :cond_4
    throw p0
.end method

.method private fk()V
    .locals 4

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Xe:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->bf:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cache key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->_e:Lcom/bumptech/glide/load/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", fetcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->df:Lcom/bumptech/glide/load/a/d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Retrieved data"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->df:Lcom/bumptech/glide/load/a/d;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->bf:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->cf:Lcom/bumptech/glide/load/DataSource;

    invoke-direct {p0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/a/d;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/A;

    move-result-object v0
    :try_end_0
    .catch Lcom/bumptech/glide/load/engine/GlideException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->af:Lcom/bumptech/glide/load/c;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->cf:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/load/engine/GlideException;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/DataSource;)V

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Qe:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->cf:Lcom/bumptech/glide/load/DataSource;

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->c(Lcom/bumptech/glide/load/engine/A;Lcom/bumptech/glide/load/DataSource;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->jk()V

    :goto_1
    return-void
.end method

.method private getPriority()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->priority:Lcom/bumptech/glide/Priority;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method private gk()Lcom/bumptech/glide/load/engine/f;
    .locals 3

    sget-object v0, Lcom/bumptech/glide/load/engine/h;->Je:[I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ve:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ve:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/engine/E;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Pe:Lcom/bumptech/glide/load/engine/g;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/E;-><init>(Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/engine/f$a;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/bumptech/glide/load/engine/c;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Pe:Lcom/bumptech/glide/load/engine/g;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/c;-><init>(Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/engine/f$a;)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/bumptech/glide/load/engine/B;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Pe:Lcom/bumptech/glide/load/engine/g;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/B;-><init>(Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/engine/f$a;)V

    return-object v0
.end method

.method private hk()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Te:Lcom/bumptech/glide/load/engine/DecodeJob$e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$e;->onFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->ik()V

    :cond_0
    return-void
.end method

.method private ik()V
    .locals 4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Te:Lcom/bumptech/glide/load/engine/DecodeJob$e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$e;->reset()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Se:Lcom/bumptech/glide/load/engine/DecodeJob$c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$c;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Pe:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/g;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->ff:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Eb:Lcom/bumptech/glide/e;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->signature:Lcom/bumptech/glide/load/c;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/g;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->priority:Lcom/bumptech/glide/Priority;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ue:Lcom/bumptech/glide/load/engine/s;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$a;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ve:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->ef:Lcom/bumptech/glide/load/engine/f;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ze:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->_e:Lcom/bumptech/glide/load/c;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->bf:Ljava/lang/Object;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->cf:Lcom/bumptech/glide/load/DataSource;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->df:Lcom/bumptech/glide/load/a/d;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Xe:J

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Vd:Z

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->model:Ljava/lang/Object;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Qe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->pool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method private jk()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ze:Ljava/lang/Thread;

    invoke-static {}, Lcom/bumptech/glide/util/e;->Gh()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Xe:J

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Vd:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->ef:Lcom/bumptech/glide/load/engine/f;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->ef:Lcom/bumptech/glide/load/engine/f;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/f;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ve:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ve:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->gk()Lcom/bumptech/glide/load/engine/f;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->ef:Lcom/bumptech/glide/load/engine/f;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ve:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->SOURCE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->K()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ve:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Vd:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->notifyFailed()V

    :cond_3
    return-void
.end method

.method private kk()V
    .locals 3

    sget-object v0, Lcom/bumptech/glide/load/engine/h;->Ie:[I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->We:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->fk()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized run reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->We:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->jk()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->rq:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ve:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->gk()Lcom/bumptech/glide/load/engine/f;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->ef:Lcom/bumptech/glide/load/engine/f;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->jk()V

    :goto_0
    return-void
.end method

.method private lg()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Te:Lcom/bumptech/glide/load/engine/DecodeJob$e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$e;->lg()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->ik()V

    :cond_0
    return-void
.end method

.method private lk()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Re:Lcom/bumptech/glide/util/a/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/g;->Mh()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->ff:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->ff:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already notified"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private notifyFailed()V
    .locals 3

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->lk()V

    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Qe:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "Failed to load resource"

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$a;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/DecodeJob$a;->a(Lcom/bumptech/glide/load/engine/GlideException;)V

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->hk()V

    return-void
.end method


# virtual methods
.method public K()V
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->sq:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->We:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$a;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/engine/DecodeJob$a;->a(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    return-void
.end method

.method a(Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/engine/A;)Lcom/bumptech/glide/load/engine/A;
    .locals 11
    .param p2    # Lcom/bumptech/glide/load/engine/A;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lcom/bumptech/glide/load/engine/A<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/engine/A<",
            "TZ;>;"
        }
    .end annotation

    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/A;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    sget-object v0, Lcom/bumptech/glide/load/DataSource;->iq:Lcom/bumptech/glide/load/DataSource;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Pe:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v0, v8}, Lcom/bumptech/glide/load/engine/g;->d(Ljava/lang/Class;)Lcom/bumptech/glide/load/j;

    move-result-object v0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Eb:Lcom/bumptech/glide/e;

    iget v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    iget v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    invoke-interface {v0, v2, p2, v3, v4}, Lcom/bumptech/glide/load/j;->transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/A;II)Lcom/bumptech/glide/load/engine/A;

    move-result-object v2

    move-object v7, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, p2

    move-object v7, v1

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/A;->recycle()V

    :cond_1
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Pe:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/engine/g;->d(Lcom/bumptech/glide/load/engine/A;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Pe:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/engine/g;->c(Lcom/bumptech/glide/load/engine/A;)Lcom/bumptech/glide/load/i;

    move-result-object v1

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/g;

    invoke-interface {v1, p2}, Lcom/bumptech/glide/load/i;->a(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/EncodeStrategy;

    move-result-object p2

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/bumptech/glide/load/EncodeStrategy;->NONE:Lcom/bumptech/glide/load/EncodeStrategy;

    :goto_1
    move-object v10, v1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Pe:Lcom/bumptech/glide/load/engine/g;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->_e:Lcom/bumptech/glide/load/c;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/g;->e(Lcom/bumptech/glide/load/c;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Fe:Lcom/bumptech/glide/load/engine/o;

    invoke-virtual {v3, v1, p1, p2}, Lcom/bumptech/glide/load/engine/o;->a(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v10, :cond_5

    sget-object p1, Lcom/bumptech/glide/load/engine/h;->Ke:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v2, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    new-instance p1, Lcom/bumptech/glide/load/engine/C;

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Pe:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/g;->V()Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->_e:Lcom/bumptech/glide/load/c;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->signature:Lcom/bumptech/glide/load/c;

    iget v5, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    iget v6, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    iget-object v9, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/g;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/bumptech/glide/load/engine/C;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/b;Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/c;IILcom/bumptech/glide/load/j;Ljava/lang/Class;Lcom/bumptech/glide/load/g;)V

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown strategy: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p1, Lcom/bumptech/glide/load/engine/d;

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->_e:Lcom/bumptech/glide/load/c;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->signature:Lcom/bumptech/glide/load/c;

    invoke-direct {p1, p2, v1}, Lcom/bumptech/glide/load/engine/d;-><init>(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/c;)V

    :goto_2
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/z;->f(Lcom/bumptech/glide/load/engine/A;)Lcom/bumptech/glide/load/engine/z;

    move-result-object v0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Se:Lcom/bumptech/glide/load/engine/DecodeJob$c;

    invoke-virtual {p0, p1, v10, v0}, Lcom/bumptech/glide/load/engine/DecodeJob$c;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/i;Lcom/bumptech/glide/load/engine/z;)V

    goto :goto_3

    :cond_5
    new-instance p0, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/A;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw p0

    :cond_6
    :goto_3
    return-object v0
.end method

.method a(Lcom/bumptech/glide/e;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/s;Lcom/bumptech/glide/load/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/o;Ljava/util/Map;ZZZLcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/engine/DecodeJob$a;I)Lcom/bumptech/glide/load/engine/DecodeJob;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/engine/s;",
            "Lcom/bumptech/glide/load/c;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/engine/o;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/j<",
            "*>;>;ZZZ",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/engine/DecodeJob$a<",
            "TR;>;I)",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->Pe:Lcom/bumptech/glide/load/engine/g;

    iget-object v15, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ce:Lcom/bumptech/glide/load/engine/DecodeJob$d;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p10

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p15

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-virtual/range {v1 .. v15}, Lcom/bumptech/glide/load/engine/g;->a(Lcom/bumptech/glide/e;Ljava/lang/Object;Lcom/bumptech/glide/load/c;IILcom/bumptech/glide/load/engine/o;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/g;Ljava/util/Map;ZZLcom/bumptech/glide/load/engine/DecodeJob$d;)V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->Eb:Lcom/bumptech/glide/e;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->signature:Lcom/bumptech/glide/load/c;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->priority:Lcom/bumptech/glide/Priority;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ue:Lcom/bumptech/glide/load/engine/s;

    move/from16 v1, p5

    iput v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    move/from16 v1, p6

    iput v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->Fe:Lcom/bumptech/glide/load/engine/o;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ye:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/g;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$a;

    move/from16 v1, p17

    iput v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->order:I

    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->rq:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->We:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->model:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/c;Ljava/lang/Exception;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Ljava/lang/Exception;",
            "Lcom/bumptech/glide/load/a/d<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    invoke-interface {p3}, Lcom/bumptech/glide/load/a/d;->cleanup()V

    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3}, Lcom/bumptech/glide/load/a/d;->M()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p1, p4, p2}, Lcom/bumptech/glide/load/engine/GlideException;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/DataSource;Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Qe:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ze:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->sq:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->We:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$a;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/DecodeJob$a;->a(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->jk()V

    :goto_0
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/c;Ljava/lang/Object;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/a/d<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lcom/bumptech/glide/load/c;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->_e:Lcom/bumptech/glide/load/c;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->bf:Ljava/lang/Object;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->df:Lcom/bumptech/glide/load/a/d;

    iput-object p4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->cf:Lcom/bumptech/glide/load/DataSource;

    iput-object p5, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->af:Lcom/bumptech/glide/load/c;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ze:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->tq:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->We:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$a;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/DecodeJob$a;->a(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->fk()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    throw p0
.end method

.method public b(Lcom/bumptech/glide/load/engine/DecodeJob;)I
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/engine/DecodeJob;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->getPriority()I

    move-result v0

    invoke-direct {p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->order:I

    iget p1, p1, Lcom/bumptech/glide/load/engine/DecodeJob;->order:I

    sub-int v0, p0, p1

    :cond_0
    return v0
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Vd:Z

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->ef:Lcom/bumptech/glide/load/engine/f;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/f;->cancel()V

    :cond_0
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->b(Lcom/bumptech/glide/load/engine/DecodeJob;)I

    move-result p0

    return p0
.end method

.method public getVerifier()Lcom/bumptech/glide/util/a/g;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Re:Lcom/bumptech/glide/util/a/g;

    return-object p0
.end method

.method mg()Z
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->rq:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->uq:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->vq:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method release(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Te:Lcom/bumptech/glide/load/engine/DecodeJob$e;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob$e;->release(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->ik()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    const-string v0, "DecodeJob"

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->df:Lcom/bumptech/glide/load/a/d;

    :try_start_0
    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Vd:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->notifyFailed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/bumptech/glide/load/a/d;->cleanup()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->kk()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    :goto_0
    invoke-interface {v1}, Lcom/bumptech/glide/load/a/d;->cleanup()V

    goto :goto_1

    :catchall_0
    move-exception v2

    const/4 v3, 0x3

    :try_start_2
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Vd:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", stage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ve:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ve:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    sget-object v3, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ENCODE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Qe:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->notifyFailed()V

    :cond_3
    iget-boolean p0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Vd:Z

    if-eqz p0, :cond_5

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return-void

    :cond_5
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/bumptech/glide/load/a/d;->cleanup()V

    :cond_6
    throw p0
.end method
