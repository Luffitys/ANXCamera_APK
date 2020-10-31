.class public final Landroid/graphics/text/LineBreaker$Builder;
.super Ljava/lang/Object;
.source "LineBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/text/LineBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBreakStrategy:I

.field private mHyphenationFrequency:I

.field private mIndents:[I

.field private mJustificationMode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/text/LineBreaker$Builder;->mBreakStrategy:I

    iput v0, p0, Landroid/graphics/text/LineBreaker$Builder;->mHyphenationFrequency:I

    iput v0, p0, Landroid/graphics/text/LineBreaker$Builder;->mJustificationMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/text/LineBreaker$Builder;->mIndents:[I

    return-void
.end method


# virtual methods
.method public build()Landroid/graphics/text/LineBreaker;
    .registers 8

    new-instance v6, Landroid/graphics/text/LineBreaker;

    iget v1, p0, Landroid/graphics/text/LineBreaker$Builder;->mBreakStrategy:I

    iget v2, p0, Landroid/graphics/text/LineBreaker$Builder;->mHyphenationFrequency:I

    iget v3, p0, Landroid/graphics/text/LineBreaker$Builder;->mJustificationMode:I

    iget-object v4, p0, Landroid/graphics/text/LineBreaker$Builder;->mIndents:[I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/graphics/text/LineBreaker;-><init>(III[ILandroid/graphics/text/LineBreaker$1;)V

    return-object v6
.end method

.method public setBreakStrategy(I)Landroid/graphics/text/LineBreaker$Builder;
    .registers 2

    iput p1, p0, Landroid/graphics/text/LineBreaker$Builder;->mBreakStrategy:I

    return-object p0
.end method

.method public setHyphenationFrequency(I)Landroid/graphics/text/LineBreaker$Builder;
    .registers 2

    iput p1, p0, Landroid/graphics/text/LineBreaker$Builder;->mHyphenationFrequency:I

    return-object p0
.end method

.method public setIndents([I)Landroid/graphics/text/LineBreaker$Builder;
    .registers 2

    iput-object p1, p0, Landroid/graphics/text/LineBreaker$Builder;->mIndents:[I

    return-object p0
.end method

.method public setJustificationMode(I)Landroid/graphics/text/LineBreaker$Builder;
    .registers 2

    iput p1, p0, Landroid/graphics/text/LineBreaker$Builder;->mJustificationMode:I

    return-object p0
.end method
