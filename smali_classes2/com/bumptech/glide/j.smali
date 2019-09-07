.class public Lcom/bumptech/glide/j;
.super Ljava/lang/Object;
.source "RequestBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/bumptech/glide/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Lcom/bumptech/glide/g<",
        "Lcom/bumptech/glide/j<",
        "TTranscodeType;>;>;"
    }
.end annotation


# static fields
.field protected static final Ec:Lcom/bumptech/glide/request/f;


# instance fields
.field private Ac:Ljava/lang/Float;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private Bc:Z

.field private Cc:Z

.field private Dc:Z

.field private final Eb:Lcom/bumptech/glide/e;

.field private final Kb:Lcom/bumptech/glide/c;

.field private final context:Landroid/content/Context;

.field private final da:Lcom/bumptech/glide/m;

.field private model:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final ta:Lcom/bumptech/glide/request/f;

.field private final uc:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected vc:Lcom/bumptech/glide/request/f;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private wc:Lcom/bumptech/glide/n;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/n<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field private xc:Lcom/bumptech/glide/request/e;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/e<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private yc:Lcom/bumptech/glide/j;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private zc:Lcom/bumptech/glide/j;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/o;->DATA:Lcom/bumptech/glide/load/engine/o;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/engine/o;)Lcom/bumptech/glide/request/f;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/f;->q(Z)Lcom/bumptech/glide/request/f;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/j;->Ec:Lcom/bumptech/glide/request/f;

    return-void
.end method

.method protected constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/m;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/c;",
            "Lcom/bumptech/glide/m;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/j;->Bc:Z

    iput-object p1, p0, Lcom/bumptech/glide/j;->Kb:Lcom/bumptech/glide/c;

    iput-object p2, p0, Lcom/bumptech/glide/j;->da:Lcom/bumptech/glide/m;

    iput-object p3, p0, Lcom/bumptech/glide/j;->uc:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/bumptech/glide/m;->W()Lcom/bumptech/glide/request/f;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/j;->ta:Lcom/bumptech/glide/request/f;

    iput-object p4, p0, Lcom/bumptech/glide/j;->context:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;)Lcom/bumptech/glide/n;

    move-result-object p2

    iput-object p2, p0, Lcom/bumptech/glide/j;->wc:Lcom/bumptech/glide/n;

    iget-object p2, p0, Lcom/bumptech/glide/j;->ta:Lcom/bumptech/glide/request/f;

    iput-object p2, p0, Lcom/bumptech/glide/j;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {p1}, Lcom/bumptech/glide/c;->Ef()Lcom/bumptech/glide/e;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/j;->Eb:Lcom/bumptech/glide/e;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/j<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p2, Lcom/bumptech/glide/j;->Kb:Lcom/bumptech/glide/c;

    iget-object v1, p2, Lcom/bumptech/glide/j;->da:Lcom/bumptech/glide/m;

    iget-object v2, p2, Lcom/bumptech/glide/j;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/bumptech/glide/j;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/m;Ljava/lang/Class;Landroid/content/Context;)V

    iget-object p1, p2, Lcom/bumptech/glide/j;->model:Ljava/lang/Object;

    iput-object p1, p0, Lcom/bumptech/glide/j;->model:Ljava/lang/Object;

    iget-boolean p1, p2, Lcom/bumptech/glide/j;->Cc:Z

    iput-boolean p1, p0, Lcom/bumptech/glide/j;->Cc:Z

    iget-object p1, p2, Lcom/bumptech/glide/j;->vc:Lcom/bumptech/glide/request/f;

    iput-object p1, p0, Lcom/bumptech/glide/j;->vc:Lcom/bumptech/glide/request/f;

    return-void
.end method

.method private a(Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/n;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/c;
    .locals 14
    .param p2    # Lcom/bumptech/glide/request/e;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/request/d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/o<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/e<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/d;",
            "Lcom/bumptech/glide/n<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lcom/bumptech/glide/request/f;",
            ")",
            "Lcom/bumptech/glide/request/c;"
        }
    .end annotation

    move-object v9, p0

    iget-object v0, v9, Lcom/bumptech/glide/j;->zc:Lcom/bumptech/glide/j;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/request/a;

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/a;-><init>(Lcom/bumptech/glide/request/d;)V

    move-object v3, v0

    move-object v13, v3

    goto :goto_0

    :cond_0
    move-object/from16 v1, p3

    const/4 v0, 0x0

    move-object v13, v0

    move-object v3, v1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/n;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/c;

    move-result-object v0

    if-nez v13, :cond_1

    return-object v0

    :cond_1
    iget-object v1, v9, Lcom/bumptech/glide/j;->zc:Lcom/bumptech/glide/j;

    iget-object v1, v1, Lcom/bumptech/glide/j;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/f;->fh()I

    move-result v1

    iget-object v2, v9, Lcom/bumptech/glide/j;->zc:Lcom/bumptech/glide/j;

    iget-object v2, v2, Lcom/bumptech/glide/j;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/f;->eh()I

    move-result v2

    invoke-static/range {p6 .. p7}, Lcom/bumptech/glide/util/l;->o(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v9, Lcom/bumptech/glide/j;->zc:Lcom/bumptech/glide/j;

    iget-object v3, v3, Lcom/bumptech/glide/j;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v3}, Lcom/bumptech/glide/request/f;->th()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/f;->fh()I

    move-result v1

    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/f;->eh()I

    move-result v2

    :cond_2
    move v10, v1

    move v11, v2

    iget-object v4, v9, Lcom/bumptech/glide/j;->zc:Lcom/bumptech/glide/j;

    iget-object v8, v4, Lcom/bumptech/glide/j;->wc:Lcom/bumptech/glide/n;

    iget-object v1, v4, Lcom/bumptech/glide/j;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/f;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v1

    iget-object v2, v9, Lcom/bumptech/glide/j;->zc:Lcom/bumptech/glide/j;

    iget-object v12, v2, Lcom/bumptech/glide/j;->vc:Lcom/bumptech/glide/request/f;

    move-object v5, p1

    move-object/from16 v6, p2

    move-object v7, v13

    move-object v9, v1

    invoke-direct/range {v4 .. v12}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/n;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/c;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Lcom/bumptech/glide/request/a;->a(Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/request/c;)V

    return-object v13
.end method

.method private a(Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/c;
    .locals 9
    .param p2    # Lcom/bumptech/glide/request/e;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/o<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/e<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/f;",
            ")",
            "Lcom/bumptech/glide/request/c;"
        }
    .end annotation

    iget-object v4, p0, Lcom/bumptech/glide/j;->wc:Lcom/bumptech/glide/n;

    invoke-virtual {p3}, Lcom/bumptech/glide/request/f;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v5

    invoke-virtual {p3}, Lcom/bumptech/glide/request/f;->fh()I

    move-result v6

    invoke-virtual {p3}, Lcom/bumptech/glide/request/f;->eh()I

    move-result v7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/n;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/c;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/n;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/c;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/o<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/e<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/f;",
            "Lcom/bumptech/glide/request/d;",
            "Lcom/bumptech/glide/n<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II)",
            "Lcom/bumptech/glide/request/c;"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/j;->context:Landroid/content/Context;

    iget-object v2, v0, Lcom/bumptech/glide/j;->Eb:Lcom/bumptech/glide/e;

    iget-object v3, v0, Lcom/bumptech/glide/j;->model:Ljava/lang/Object;

    iget-object v4, v0, Lcom/bumptech/glide/j;->uc:Ljava/lang/Class;

    iget-object v10, v0, Lcom/bumptech/glide/j;->xc:Lcom/bumptech/glide/request/e;

    invoke-virtual {v2}, Lcom/bumptech/glide/e;->X()Lcom/bumptech/glide/load/engine/Engine;

    move-result-object v12

    invoke-virtual/range {p5 .. p5}, Lcom/bumptech/glide/n;->Vf()Lcom/bumptech/glide/request/a/g;

    move-result-object v13

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v4, p3

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p6

    move-object v8, p1

    move-object/from16 v9, p2

    move-object/from16 v11, p4

    invoke-static/range {v0 .. v13}, Lcom/bumptech/glide/request/SingleRequest;->a(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/f;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/request/SingleRequest;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/c;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/bumptech/glide/request/f;->nh()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p2}, Lcom/bumptech/glide/request/c;->isComplete()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b(Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/n;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/c;
    .locals 19
    .param p3    # Lcom/bumptech/glide/request/d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/o<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/e<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/d;",
            "Lcom/bumptech/glide/n<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lcom/bumptech/glide/request/f;",
            ")",
            "Lcom/bumptech/glide/request/c;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v4, p3

    move-object/from16 v10, p5

    iget-object v0, v9, Lcom/bumptech/glide/j;->yc:Lcom/bumptech/glide/j;

    if-eqz v0, :cond_4

    iget-boolean v1, v9, Lcom/bumptech/glide/j;->Dc:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/bumptech/glide/j;->wc:Lcom/bumptech/glide/n;

    iget-boolean v0, v0, Lcom/bumptech/glide/j;->Bc:Z

    if-eqz v0, :cond_0

    move-object/from16 v14, p4

    goto :goto_0

    :cond_0
    move-object v14, v1

    :goto_0
    iget-object v0, v9, Lcom/bumptech/glide/j;->yc:Lcom/bumptech/glide/j;

    iget-object v0, v0, Lcom/bumptech/glide/j;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->oh()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v9, Lcom/bumptech/glide/j;->yc:Lcom/bumptech/glide/j;

    iget-object v0, v0, Lcom/bumptech/glide/j;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-direct {v9, v10}, Lcom/bumptech/glide/j;->c(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v0

    :goto_1
    move-object v15, v0

    iget-object v0, v9, Lcom/bumptech/glide/j;->yc:Lcom/bumptech/glide/j;

    iget-object v0, v0, Lcom/bumptech/glide/j;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->fh()I

    move-result v0

    iget-object v1, v9, Lcom/bumptech/glide/j;->yc:Lcom/bumptech/glide/j;

    iget-object v1, v1, Lcom/bumptech/glide/j;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/f;->eh()I

    move-result v1

    invoke-static/range {p6 .. p7}, Lcom/bumptech/glide/util/l;->o(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v9, Lcom/bumptech/glide/j;->yc:Lcom/bumptech/glide/j;

    iget-object v2, v2, Lcom/bumptech/glide/j;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/f;->th()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/f;->fh()I

    move-result v0

    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/f;->eh()I

    move-result v1

    :cond_2
    move/from16 v16, v0

    move/from16 v17, v1

    new-instance v13, Lcom/bumptech/glide/request/i;

    invoke-direct {v13, v4}, Lcom/bumptech/glide/request/i;-><init>(Lcom/bumptech/glide/request/d;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object v4, v13

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/n;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/c;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/bumptech/glide/j;->Dc:Z

    iget-object v10, v9, Lcom/bumptech/glide/j;->yc:Lcom/bumptech/glide/j;

    iget-object v1, v10, Lcom/bumptech/glide/j;->vc:Lcom/bumptech/glide/request/f;

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v2, v13

    move-object/from16 v18, v1

    invoke-direct/range {v10 .. v18}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/n;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/c;

    move-result-object v1

    const/4 v3, 0x0

    iput-boolean v3, v9, Lcom/bumptech/glide/j;->Dc:Z

    invoke-virtual {v2, v0, v1}, Lcom/bumptech/glide/request/i;->a(Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/request/c;)V

    return-object v2

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, v9, Lcom/bumptech/glide/j;->Ac:Ljava/lang/Float;

    if-eqz v0, :cond_5

    new-instance v11, Lcom/bumptech/glide/request/i;

    invoke-direct {v11, v4}, Lcom/bumptech/glide/request/i;-><init>(Lcom/bumptech/glide/request/d;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object v4, v11

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/n;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/c;

    move-result-object v12

    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object v0

    iget-object v1, v9, Lcom/bumptech/glide/j;->Ac:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/f;->g(F)Lcom/bumptech/glide/request/f;

    move-result-object v3

    invoke-direct {v9, v10}, Lcom/bumptech/glide/j;->c(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/n;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/c;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Lcom/bumptech/glide/request/i;->a(Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/request/c;)V

    return-object v11

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/n;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/c;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/target/o;
    .locals 2
    .param p1    # Lcom/bumptech/glide/request/target/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/e;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/o<",
            "TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/request/e<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/f;",
            ")TY;"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/l;->Ih()V

    invoke-static {p1}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/bumptech/glide/j;->Cc:Z

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/bumptech/glide/request/f;->Og()Lcom/bumptech/glide/request/f;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/c;

    move-result-object p2

    invoke-interface {p1}, Lcom/bumptech/glide/request/target/o;->getRequest()Lcom/bumptech/glide/request/c;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/bumptech/glide/request/c;->a(Lcom/bumptech/glide/request/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p3, v0}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/c;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-interface {p2}, Lcom/bumptech/glide/request/c;->recycle()V

    invoke-static {v0}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    check-cast p0, Lcom/bumptech/glide/request/c;

    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->isRunning()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->begin()V

    :cond_0
    return-object p1

    :cond_1
    iget-object p3, p0, Lcom/bumptech/glide/j;->da:Lcom/bumptech/glide/m;

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/m;->d(Lcom/bumptech/glide/request/target/o;)V

    invoke-interface {p1, p2}, Lcom/bumptech/glide/request/target/o;->f(Lcom/bumptech/glide/request/c;)V

    iget-object p0, p0, Lcom/bumptech/glide/j;->da:Lcom/bumptech/glide/m;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/c;)V

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must call #load() before calling #into()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private c(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;
    .locals 2
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/i;->tc:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bumptech/glide/j;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object p0, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    return-object p0

    :cond_2
    sget-object p0, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    return-object p0

    :cond_3
    sget-object p0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    return-object p0
.end method

.method private t(Ljava/lang/Object;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/j;->model:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bumptech/glide/j;->Cc:Z

    return-object p0
.end method


# virtual methods
.method protected Hf()Lcom/bumptech/glide/j;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/j<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/j;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/j;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/j;)V

    sget-object p0, Lcom/bumptech/glide/j;->Ec:Lcom/bumptech/glide/request/f;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method protected If()Lcom/bumptech/glide/request/f;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/j;->ta:Lcom/bumptech/glide/request/f;

    iget-object p0, p0, Lcom/bumptech/glide/j;->vc:Lcom/bumptech/glide/request/f;

    if-ne v0, p0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public Jf()Lcom/bumptech/glide/request/b;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/b<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, v0}, Lcom/bumptech/glide/j;->j(II)Lcom/bumptech/glide/request/b;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/j;->t(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    sget-object p1, Lcom/bumptech/glide/load/engine/o;->NONE:Lcom/bumptech/glide/load/engine/o;

    invoke-static {p1}, Lcom/bumptech/glide/request/f;->b(Lcom/bumptech/glide/load/engine/o;)Lcom/bumptech/glide/request/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Lcom/bumptech/glide/j;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/j;->zc:Lcom/bumptech/glide/j;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/n;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Lcom/bumptech/glide/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/n<",
            "*-TTranscodeType;>;)",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/n;

    iput-object p1, p0, Lcom/bumptech/glide/j;->wc:Lcom/bumptech/glide/n;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bumptech/glide/j;->Bc:Z

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/e;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/e<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/j;->xc:Lcom/bumptech/glide/request/e;

    return-object p0
.end method

.method public a(Ljava/io/File;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/j;->t(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/j;->t(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    iget-object p1, p0, Lcom/bumptech/glide/j;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/e/a;->obtain(Landroid/content/Context;)Lcom/bumptech/glide/load/c;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/request/f;->h(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/request/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public varargs a([Lcom/bumptech/glide/j;)Lcom/bumptech/glide/j;
    .locals 3
    .param p1    # [Lcom/bumptech/glide/j;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    aget-object v2, p1, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/j;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    .locals 3
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/request/target/ViewTarget<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/l;->Ih()V

    invoke-static {p1}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bumptech/glide/j;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->sh()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->qh()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/bumptech/glide/i;->sc:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->xh()Lcom/bumptech/glide/request/f;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->zh()Lcom/bumptech/glide/request/f;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->xh()Lcom/bumptech/glide/request/f;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->wh()Lcom/bumptech/glide/request/f;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/j;->Eb:Lcom/bumptech/glide/e;

    iget-object v2, p0, Lcom/bumptech/glide/j;->uc:Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Lcom/bumptech/glide/e;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/ViewTarget;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/target/o;

    check-cast p1, Lcom/bumptech/glide/request/target/ViewTarget;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/request/target/o;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/target/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/e;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/o<",
            "TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/request/e<",
            "TTranscodeType;>;)TY;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/j;->If()Lcom/bumptech/glide/request/f;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/target/o;

    return-object p1
.end method

.method public bridge synthetic a(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Ljava/io/File;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->a(Ljava/io/File;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Integer;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public b(F)Lcom/bumptech/glide/j;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/j;->Ac:Ljava/lang/Float;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Lcom/bumptech/glide/j;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/j;->yc:Lcom/bumptech/glide/j;

    return-object p0
.end method

.method public b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/j;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/f;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/bumptech/glide/j;->If()Lcom/bumptech/glide/request/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/f;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/f;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/j;->vc:Lcom/bumptech/glide/request/f;

    return-object p0
.end method

.method public b(Ljava/net/URL;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/j;->t(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    return-object p0
.end method

.method public b(Lcom/bumptech/glide/request/target/o;)Lcom/bumptech/glide/request/target/o;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/target/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/o<",
            "Ljava/io/File;",
            ">;>(TY;)TY;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/j;->Hf()Lcom/bumptech/glide/j;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->c(Lcom/bumptech/glide/request/target/o;)Lcom/bumptech/glide/request/target/o;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Ljava/net/URL;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->b(Ljava/net/URL;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public c(Landroid/net/Uri;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/j;->t(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    return-object p0
.end method

.method public c([B)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/j;->t(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    iget-object p1, p0, Lcom/bumptech/glide/j;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {p1}, Lcom/bumptech/glide/request/f;->mh()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/bumptech/glide/load/engine/o;->NONE:Lcom/bumptech/glide/load/engine/o;

    invoke-static {p1}, Lcom/bumptech/glide/request/f;->b(Lcom/bumptech/glide/load/engine/o;)Lcom/bumptech/glide/request/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/j;

    move-result-object p0

    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/j;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {p1}, Lcom/bumptech/glide/request/f;->ph()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/bumptech/glide/request/f;->r(Z)Lcom/bumptech/glide/request/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/j;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public c(Lcom/bumptech/glide/request/target/o;)Lcom/bumptech/glide/request/target/o;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/target/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/o<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/request/target/o;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->c(Landroid/net/Uri;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c([B)Ljava/lang/Object;
    .locals 0
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->c([B)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/bumptech/glide/j;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/j;

    iget-object v0, p0, Lcom/bumptech/glide/j;->vc:Lcom/bumptech/glide/request/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/f;->clone()Lcom/bumptech/glide/request/f;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/j;->vc:Lcom/bumptech/glide/request/f;

    iget-object v0, p0, Lcom/bumptech/glide/j;->wc:Lcom/bumptech/glide/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/n;->clone()Lcom/bumptech/glide/n;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/j;->wc:Lcom/bumptech/glide/n;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/j;->clone()Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public g(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/j;->t(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    sget-object p1, Lcom/bumptech/glide/load/engine/o;->NONE:Lcom/bumptech/glide/load/engine/o;

    invoke-static {p1}, Lcom/bumptech/glide/request/f;->b(Lcom/bumptech/glide/load/engine/o;)Lcom/bumptech/glide/request/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public g(II)Lcom/bumptech/glide/request/b;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/b<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/j;->Hf()Lcom/bumptech/glide/j;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/j;->j(II)Lcom/bumptech/glide/request/b;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic g(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->g(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public h(II)Lcom/bumptech/glide/request/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/b<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/j;->j(II)Lcom/bumptech/glide/request/b;

    move-result-object p0

    return-object p0
.end method

.method public i(II)Lcom/bumptech/glide/request/target/o;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/target/o<",
            "TTranscodeType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/j;->da:Lcom/bumptech/glide/m;

    invoke-static {v0, p1, p2}, Lcom/bumptech/glide/request/target/l;->a(Lcom/bumptech/glide/m;II)Lcom/bumptech/glide/request/target/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->c(Lcom/bumptech/glide/request/target/o;)Lcom/bumptech/glide/request/target/o;

    move-result-object p0

    return-object p0
.end method

.method public j(II)Lcom/bumptech/glide/request/b;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/b<",
            "TTranscodeType;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/RequestFutureTarget;

    iget-object v1, p0, Lcom/bumptech/glide/j;->Eb:Lcom/bumptech/glide/e;

    invoke-virtual {v1}, Lcom/bumptech/glide/e;->Y()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/bumptech/glide/request/RequestFutureTarget;-><init>(Landroid/os/Handler;II)V

    invoke-static {}, Lcom/bumptech/glide/util/l;->Jh()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bumptech/glide/j;->Eb:Lcom/bumptech/glide/e;

    invoke-virtual {p1}, Lcom/bumptech/glide/e;->Y()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bumptech/glide/h;

    invoke-direct {p2, p0, v0}, Lcom/bumptech/glide/h;-><init>(Lcom/bumptech/glide/j;Lcom/bumptech/glide/request/RequestFutureTarget;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/request/target/o;

    :goto_0
    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/j;->t(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    return-object p0
.end method

.method public load(Ljava/lang/String;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/j;->t(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->load(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->load(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method public preload()Lcom/bumptech/glide/request/target/o;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/target/o<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, v0}, Lcom/bumptech/glide/j;->i(II)Lcom/bumptech/glide/request/target/o;

    move-result-object p0

    return-object p0
.end method
