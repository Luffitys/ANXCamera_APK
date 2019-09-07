.class public final Lcom/bumptech/glide/request/SingleRequest;
.super Ljava/lang/Object;
.source "SingleRequest.java"

# interfaces
.implements Lcom/bumptech/glide/request/c;
.implements Lcom/bumptech/glide/request/target/n;
.implements Lcom/bumptech/glide/request/g;
.implements Lcom/bumptech/glide/util/a/d$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/SingleRequest$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/c;",
        "Lcom/bumptech/glide/request/target/n;",
        "Lcom/bumptech/glide/request/g;",
        "Lcom/bumptech/glide/util/a/d$c;"
    }
.end annotation


# static fields
.field private static final Rf:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/bumptech/glide/request/SingleRequest<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Request"

.field private static final sl:Ljava/lang/String; = "Glide"

.field private static final tl:Z


# instance fields
.field private Eb:Lcom/bumptech/glide/e;

.field private Hk:Landroid/graphics/drawable/Drawable;

.field private Jk:I

.field private Kk:I

.field private Mk:Landroid/graphics/drawable/Drawable;

.field private final Re:Lcom/bumptech/glide/util/a/g;

.field private context:Landroid/content/Context;

.field private height:I

.field private ml:Z

.field private model:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private nl:Lcom/bumptech/glide/request/e;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/e<",
            "TR;>;"
        }
    .end annotation
.end field

.field private ol:Lcom/bumptech/glide/request/d;

.field private pl:Lcom/bumptech/glide/request/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/a/g<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private priority:Lcom/bumptech/glide/Priority;

.field private ql:Lcom/bumptech/glide/load/engine/Engine$b;

.field private resource:Lcom/bumptech/glide/load/engine/A;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/A<",
            "TR;>;"
        }
    .end annotation
.end field

.field private rl:Landroid/graphics/drawable/Drawable;

.field private startTime:J

.field private status:Lcom/bumptech/glide/request/SingleRequest$Status;

.field private final tag:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private target:Lcom/bumptech/glide/request/target/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/target/o<",
            "TR;>;"
        }
    .end annotation
.end field

.field private uc:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field private va:Lcom/bumptech/glide/load/engine/Engine;

.field private vc:Lcom/bumptech/glide/request/f;

.field private width:I

.field private xc:Lcom/bumptech/glide/request/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/e<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bumptech/glide/request/h;

    invoke-direct {v0}, Lcom/bumptech/glide/request/h;-><init>()V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/a/d;->a(ILcom/bumptech/glide/util/a/d$a;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest;->Rf:Landroid/support/v4/util/Pools$Pool;

    const-string v0, "Request"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/bumptech/glide/request/SingleRequest;->tl:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/bumptech/glide/request/SingleRequest;->tl:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->tag:Ljava/lang/String;

    invoke-static {}, Lcom/bumptech/glide/util/a/g;->newInstance()Lcom/bumptech/glide/util/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Re:Lcom/bumptech/glide/util/a/g;

    return-void
.end method

.method private E(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " this: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->tag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Request"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private Rk()V
    .locals 1

    iget-boolean p0, p0, Lcom/bumptech/glide/request/SingleRequest;->ml:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private Sk()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->ol:Lcom/bumptech/glide/request/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/d;->g(Lcom/bumptech/glide/request/c;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private T(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->Eb:Lcom/bumptech/glide/e;

    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/load/b/b/a;->a(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private Tk()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->ol:Lcom/bumptech/glide/request/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/d;->c(Lcom/bumptech/glide/request/c;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private Uk()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->ol:Lcom/bumptech/glide/request/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/d;->d(Lcom/bumptech/glide/request/c;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private Vk()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->rl:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->_g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->rl:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->rl:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->Zg()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->Zg()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->T(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->rl:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->rl:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private Wk()Z
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->ol:Lcom/bumptech/glide/request/d;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/bumptech/glide/request/d;->k()Z

    move-result p0

    if-nez p0, :cond_0

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

.method private Xk()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->ol:Lcom/bumptech/glide/request/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/d;->e(Lcom/bumptech/glide/request/c;)V

    :cond_0
    return-void
.end method

.method private Yk()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->ol:Lcom/bumptech/glide/request/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/d;->b(Lcom/bumptech/glide/request/c;)V

    :cond_0
    return-void
.end method

.method private Zk()V
    .locals 2

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->Tk()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->ah()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->Vk()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->gh()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/o;

    invoke-interface {p0, v0}, Lcom/bumptech/glide/request/target/o;->d(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static a(IF)I
    .locals 1

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static a(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/f;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/request/SingleRequest;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/request/f;",
            "II",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/target/o<",
            "TR;>;",
            "Lcom/bumptech/glide/request/e<",
            "TR;>;",
            "Lcom/bumptech/glide/request/e<",
            "TR;>;",
            "Lcom/bumptech/glide/request/d;",
            "Lcom/bumptech/glide/load/engine/Engine;",
            "Lcom/bumptech/glide/request/a/g<",
            "-TR;>;)",
            "Lcom/bumptech/glide/request/SingleRequest<",
            "TR;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/request/SingleRequest;->Rf:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/SingleRequest;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/request/SingleRequest;

    invoke-direct {v0}, Lcom/bumptech/glide/request/SingleRequest;-><init>()V

    :cond_0
    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    invoke-direct/range {v1 .. v15}, Lcom/bumptech/glide/request/SingleRequest;->b(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/f;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/a/g;)V

    return-object v0
.end method

.method private a(Lcom/bumptech/glide/load/engine/A;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/A<",
            "TR;>;TR;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->Wk()Z

    move-result v6

    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->resource:Lcom/bumptech/glide/load/engine/A;

    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->Eb:Lcom/bumptech/glide/e;

    invoke-virtual {p1}, Lcom/bumptech/glide/e;->getLogLevel()I

    move-result p1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Finished loading "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with size ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->width:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->height:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/bumptech/glide/request/SingleRequest;->startTime:J

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/e;->g(J)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Glide"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bumptech/glide/request/SingleRequest;->ml:Z

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->xc:Lcom/bumptech/glide/request/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->xc:Lcom/bumptech/glide/request/e;

    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/o;

    move-object v1, p2

    move-object v4, p3

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/request/e;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->nl:Lcom/bumptech/glide/request/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->nl:Lcom/bumptech/glide/request/e;

    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/o;

    move-object v1, p2

    move-object v4, p3

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/request/e;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->pl:Lcom/bumptech/glide/request/a/g;

    invoke-interface {v0, p3, v6}, Lcom/bumptech/glide/request/a/g;->a(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/a/f;

    move-result-object p3

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/o;

    invoke-interface {v0, p2, p3}, Lcom/bumptech/glide/request/target/o;->a(Ljava/lang/Object;Lcom/bumptech/glide/request/a/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iput-boolean p1, p0, Lcom/bumptech/glide/request/SingleRequest;->ml:Z

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->Yk()V

    return-void

    :catchall_0
    move-exception p2

    iput-boolean p1, p0, Lcom/bumptech/glide/request/SingleRequest;->ml:Z

    throw p2
.end method

.method private a(Lcom/bumptech/glide/load/engine/GlideException;I)V
    .locals 4

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Re:Lcom/bumptech/glide/util/a/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/g;->Mh()V

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Eb:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->getLogLevel()I

    move-result v0

    if-gt v0, p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Load failed for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with size ["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->width:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->height:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Glide"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x4

    if-gt v0, p2, :cond_0

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/load/engine/GlideException;->x(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->ql:Lcom/bumptech/glide/load/engine/Engine$b;

    sget-object p2, Lcom/bumptech/glide/request/SingleRequest$Status;->FAILED:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/bumptech/glide/request/SingleRequest;->ml:Z

    const/4 p2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->xc:Lcom/bumptech/glide/request/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->xc:Lcom/bumptech/glide/request/e;

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/o;

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->Wk()Z

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/o;Z)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->nl:Lcom/bumptech/glide/request/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->nl:Lcom/bumptech/glide/request/e;

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/o;

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->Wk()Z

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/o;Z)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->Zk()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iput-boolean p2, p0, Lcom/bumptech/glide/request/SingleRequest;->ml:Z

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->Xk()V

    return-void

    :catchall_0
    move-exception p1

    iput-boolean p2, p0, Lcom/bumptech/glide/request/SingleRequest;->ml:Z

    throw p1
.end method

.method private ah()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Mk:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->ah()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Mk:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Mk:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->bh()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->bh()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->T(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Mk:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->Mk:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private b(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/f;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/a/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/request/f;",
            "II",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/target/o<",
            "TR;>;",
            "Lcom/bumptech/glide/request/e<",
            "TR;>;",
            "Lcom/bumptech/glide/request/e<",
            "TR;>;",
            "Lcom/bumptech/glide/request/d;",
            "Lcom/bumptech/glide/load/engine/Engine;",
            "Lcom/bumptech/glide/request/a/g<",
            "-TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->Eb:Lcom/bumptech/glide/e;

    iput-object p3, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iput-object p4, p0, Lcom/bumptech/glide/request/SingleRequest;->uc:Ljava/lang/Class;

    iput-object p5, p0, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    iput p6, p0, Lcom/bumptech/glide/request/SingleRequest;->Kk:I

    iput p7, p0, Lcom/bumptech/glide/request/SingleRequest;->Jk:I

    iput-object p8, p0, Lcom/bumptech/glide/request/SingleRequest;->priority:Lcom/bumptech/glide/Priority;

    iput-object p9, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/o;

    iput-object p10, p0, Lcom/bumptech/glide/request/SingleRequest;->nl:Lcom/bumptech/glide/request/e;

    iput-object p11, p0, Lcom/bumptech/glide/request/SingleRequest;->xc:Lcom/bumptech/glide/request/e;

    iput-object p12, p0, Lcom/bumptech/glide/request/SingleRequest;->ol:Lcom/bumptech/glide/request/d;

    iput-object p13, p0, Lcom/bumptech/glide/request/SingleRequest;->va:Lcom/bumptech/glide/load/engine/Engine;

    iput-object p14, p0, Lcom/bumptech/glide/request/SingleRequest;->pl:Lcom/bumptech/glide/request/a/g;

    sget-object p1, Lcom/bumptech/glide/request/SingleRequest$Status;->PENDING:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    return-void
.end method

.method private gh()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Hk:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->gh()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Hk:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Hk:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->hh()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->hh()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->T(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Hk:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->Hk:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private m(Lcom/bumptech/glide/load/engine/A;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/A<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->va:Lcom/bumptech/glide/load/engine/Engine;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/Engine;->e(Lcom/bumptech/glide/load/engine/A;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->resource:Lcom/bumptech/glide/load/engine/A;

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/A;Lcom/bumptech/glide/load/DataSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/A<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Re:Lcom/bumptech/glide/util/a/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/g;->Mh()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->ql:Lcom/bumptech/glide/load/engine/Engine$b;

    if-nez p1, :cond_0

    new-instance p1, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->uc:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " inside, but instead got null."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/SingleRequest;->a(Lcom/bumptech/glide/load/engine/GlideException;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/A;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->uc:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->Uk()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/SingleRequest;->m(Lcom/bumptech/glide/load/engine/A;)V

    sget-object p1, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    return-void

    :cond_2
    invoke-direct {p0, p1, v0, p2}, Lcom/bumptech/glide/request/SingleRequest;->a(Lcom/bumptech/glide/load/engine/A;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)V

    return-void

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/SingleRequest;->m(Lcom/bumptech/glide/load/engine/A;)V

    new-instance p2, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected to receive an object of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->uc:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but instead got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v2

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "} inside Resource{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "}."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const-string v2, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/SingleRequest;->a(Lcom/bumptech/glide/load/engine/GlideException;)V

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/SingleRequest;->a(Lcom/bumptech/glide/load/engine/GlideException;I)V

    return-void
.end method

.method public a(Lcom/bumptech/glide/request/c;)Z
    .locals 3

    instance-of v0, p1, Lcom/bumptech/glide/request/SingleRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/bumptech/glide/request/SingleRequest;

    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Kk:I

    iget v2, p1, Lcom/bumptech/glide/request/SingleRequest;->Kk:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Jk:I

    iget v2, p1, Lcom/bumptech/glide/request/SingleRequest;->Jk:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v2, p1, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/bumptech/glide/util/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->uc:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/request/SingleRequest;->uc:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    iget-object v2, p1, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->priority:Lcom/bumptech/glide/Priority;

    iget-object v2, p1, Lcom/bumptech/glide/request/SingleRequest;->priority:Lcom/bumptech/glide/Priority;

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->xc:Lcom/bumptech/glide/request/e;

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/bumptech/glide/request/SingleRequest;->xc:Lcom/bumptech/glide/request/e;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/bumptech/glide/request/SingleRequest;->xc:Lcom/bumptech/glide/request/e;

    if-nez p0, :cond_1

    :goto_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public b(II)V
    .locals 19

    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/bumptech/glide/request/SingleRequest;->Re:Lcom/bumptech/glide/util/a/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/g;->Mh()V

    sget-boolean v0, Lcom/bumptech/glide/request/SingleRequest;->tl:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v15, Lcom/bumptech/glide/request/SingleRequest;->startTime:J

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/e;->g(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Lcom/bumptech/glide/request/SingleRequest;->E(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v15, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->xq:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v0, v15, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    iget-object v0, v15, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->ih()F

    move-result v0

    move/from16 v1, p1

    invoke-static {v1, v0}, Lcom/bumptech/glide/request/SingleRequest;->a(IF)I

    move-result v1

    iput v1, v15, Lcom/bumptech/glide/request/SingleRequest;->width:I

    move/from16 v1, p2

    invoke-static {v1, v0}, Lcom/bumptech/glide/request/SingleRequest;->a(IF)I

    move-result v0

    iput v0, v15, Lcom/bumptech/glide/request/SingleRequest;->height:I

    sget-boolean v0, Lcom/bumptech/glide/request/SingleRequest;->tl:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished setup for calling load in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v15, Lcom/bumptech/glide/request/SingleRequest;->startTime:J

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/e;->g(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Lcom/bumptech/glide/request/SingleRequest;->E(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v15, Lcom/bumptech/glide/request/SingleRequest;->va:Lcom/bumptech/glide/load/engine/Engine;

    iget-object v1, v15, Lcom/bumptech/glide/request/SingleRequest;->Eb:Lcom/bumptech/glide/e;

    iget-object v2, v15, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v3, v15, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v3}, Lcom/bumptech/glide/request/f;->getSignature()Lcom/bumptech/glide/load/c;

    move-result-object v3

    iget v4, v15, Lcom/bumptech/glide/request/SingleRequest;->width:I

    iget v5, v15, Lcom/bumptech/glide/request/SingleRequest;->height:I

    iget-object v6, v15, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v6}, Lcom/bumptech/glide/request/f;->z()Ljava/lang/Class;

    move-result-object v6

    iget-object v7, v15, Lcom/bumptech/glide/request/SingleRequest;->uc:Ljava/lang/Class;

    iget-object v8, v15, Lcom/bumptech/glide/request/SingleRequest;->priority:Lcom/bumptech/glide/Priority;

    iget-object v9, v15, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v9}, Lcom/bumptech/glide/request/f;->eg()Lcom/bumptech/glide/load/engine/o;

    move-result-object v9

    iget-object v10, v15, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v10}, Lcom/bumptech/glide/request/f;->getTransformations()Ljava/util/Map;

    move-result-object v10

    iget-object v11, v15, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v11}, Lcom/bumptech/glide/request/f;->rh()Z

    move-result v11

    iget-object v12, v15, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v12}, Lcom/bumptech/glide/request/f;->jg()Z

    move-result v12

    iget-object v13, v15, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v13}, Lcom/bumptech/glide/request/f;->getOptions()Lcom/bumptech/glide/load/g;

    move-result-object v13

    iget-object v14, v15, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v14}, Lcom/bumptech/glide/request/f;->nh()Z

    move-result v14

    move-object/from16 p1, v0

    iget-object v0, v15, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->kh()Z

    move-result v0

    move-object/from16 p2, v1

    move-object v1, v15

    move v15, v0

    iget-object v0, v1, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->jh()Z

    move-result v16

    iget-object v0, v1, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->dh()Z

    move-result v17

    move-object/from16 v18, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v18}, Lcom/bumptech/glide/load/engine/Engine;->a(Lcom/bumptech/glide/e;Ljava/lang/Object;Lcom/bumptech/glide/load/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/o;Ljava/util/Map;ZZLcom/bumptech/glide/load/g;ZZZZLcom/bumptech/glide/request/g;)Lcom/bumptech/glide/load/engine/Engine$b;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/request/SingleRequest;->ql:Lcom/bumptech/glide/load/engine/Engine$b;

    iget-object v0, v1, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v0, v2, :cond_3

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/bumptech/glide/request/SingleRequest;->ql:Lcom/bumptech/glide/load/engine/Engine$b;

    :cond_3
    sget-boolean v0, Lcom/bumptech/glide/request/SingleRequest;->tl:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished onSizeReady in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/bumptech/glide/request/SingleRequest;->startTime:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/e;->g(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bumptech/glide/request/SingleRequest;->E(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public begin()V
    .locals 3

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->Rk()V

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Re:Lcom/bumptech/glide/util/a/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/g;->Mh()V

    invoke-static {}, Lcom/bumptech/glide/util/e;->Gh()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/request/SingleRequest;->startTime:J

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Kk:I

    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Jk:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/l;->o(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Kk:I

    iput v0, p0, Lcom/bumptech/glide/request/SingleRequest;->width:I

    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Jk:I

    iput v0, p0, Lcom/bumptech/glide/request/SingleRequest;->height:I

    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->ah()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    new-instance v1, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v2, "Received null model"

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/request/SingleRequest;->a(Lcom/bumptech/glide/load/engine/GlideException;I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v0, v1, :cond_8

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->resource:Lcom/bumptech/glide/load/engine/A;

    sget-object v1, Lcom/bumptech/glide/load/DataSource;->jq:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/SingleRequest;->a(Lcom/bumptech/glide/load/engine/A;Lcom/bumptech/glide/load/DataSource;)V

    return-void

    :cond_3
    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->xq:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Kk:I

    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Jk:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/l;->o(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Kk:I

    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Jk:I

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/SingleRequest;->b(II)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/o;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/target/o;->b(Lcom/bumptech/glide/request/target/n;)V

    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->xq:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v0, v1, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->Tk()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/o;

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->gh()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/request/target/o;->c(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    sget-boolean v0, Lcom/bumptech/glide/request/SingleRequest;->tl:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished run method in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bumptech/glide/request/SingleRequest;->startTime:J

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/e;->g(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->E(Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot restart a running request"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method cancel()V
    .locals 1

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->Rk()V

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Re:Lcom/bumptech/glide/util/a/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/g;->Mh()V

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/o;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/target/o;->a(Lcom/bumptech/glide/request/target/n;)V

    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->CANCELLED:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->ql:Lcom/bumptech/glide/load/engine/Engine$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine$b;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->ql:Lcom/bumptech/glide/load/engine/Engine$b;

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    invoke-static {}, Lcom/bumptech/glide/util/l;->Ih()V

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->Rk()V

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Re:Lcom/bumptech/glide/util/a/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/g;->Mh()V

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->yq:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->cancel()V

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->resource:Lcom/bumptech/glide/load/engine/A;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->m(Lcom/bumptech/glide/load/engine/A;)V

    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->Sk()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/o;

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->gh()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/request/target/o;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->yq:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    return-void
.end method

.method public getVerifier()Lcom/bumptech/glide/util/a/g;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->Re:Lcom/bumptech/glide/util/a/g;

    return-object p0
.end method

.method public isCancelled()Z
    .locals 1

    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->CANCELLED:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->yq:Lcom/bumptech/glide/request/SingleRequest$Status;

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

.method public isComplete()Z
    .locals 1

    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFailed()Z
    .locals 1

    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->FAILED:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPaused()Z
    .locals 1

    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->PAUSED:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRunning()Z
    .locals 1

    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->xq:Lcom/bumptech/glide/request/SingleRequest$Status;

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

.method public l()Z
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->isComplete()Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->clear()V

    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->PAUSED:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status:Lcom/bumptech/glide/request/SingleRequest$Status;

    return-void
.end method

.method public recycle()V
    .locals 2

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->Rk()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Eb:Lcom/bumptech/glide/e;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->uc:Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->vc:Lcom/bumptech/glide/request/f;

    const/4 v1, -0x1

    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Kk:I

    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Jk:I

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/o;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->xc:Lcom/bumptech/glide/request/e;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->nl:Lcom/bumptech/glide/request/e;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->ol:Lcom/bumptech/glide/request/d;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->pl:Lcom/bumptech/glide/request/a/g;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->ql:Lcom/bumptech/glide/load/engine/Engine$b;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->rl:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Hk:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Mk:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->width:I

    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->height:I

    sget-object v0, Lcom/bumptech/glide/request/SingleRequest;->Rf:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method
