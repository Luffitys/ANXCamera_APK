.class final Landroid/view/inspector/IntFlagMapping$Flag;
.super Ljava/lang/Object;
.source "IntFlagMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inspector/IntFlagMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Flag"
.end annotation


# instance fields
.field private final mMask:I

.field private final mName:Ljava/lang/String;

.field private final mTarget:I


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/view/inspector/IntFlagMapping$Flag;->mTarget:I

    iput p1, p0, Landroid/view/inspector/IntFlagMapping$Flag;->mMask:I

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/inspector/IntFlagMapping$Flag;->mName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Landroid/view/inspector/IntFlagMapping$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inspector/IntFlagMapping$Flag;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Landroid/view/inspector/IntFlagMapping$Flag;I)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inspector/IntFlagMapping$Flag;->isEnabledFor(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/view/inspector/IntFlagMapping$Flag;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/inspector/IntFlagMapping$Flag;->mName:Ljava/lang/String;

    return-object v0
.end method

.method private isEnabledFor(I)Z
    .registers 4

    iget v0, p0, Landroid/view/inspector/IntFlagMapping$Flag;->mMask:I

    and-int/2addr v0, p1

    iget v1, p0, Landroid/view/inspector/IntFlagMapping$Flag;->mTarget:I

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
