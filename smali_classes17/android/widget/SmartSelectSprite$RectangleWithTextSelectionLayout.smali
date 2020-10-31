.class final Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;
.super Ljava/lang/Object;
.source "SmartSelectSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SmartSelectSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RectangleWithTextSelectionLayout"
.end annotation


# instance fields
.field private final mRectangle:Landroid/graphics/RectF;

.field private final mTextSelectionLayout:I


# direct methods
.method constructor <init>(Landroid/graphics/RectF;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->mRectangle:Landroid/graphics/RectF;

    iput p2, p0, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->mTextSelectionLayout:I

    return-void
.end method


# virtual methods
.method public getRectangle()Landroid/graphics/RectF;
    .registers 2

    iget-object v0, p0, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->mRectangle:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getTextSelectionLayout()I
    .registers 2

    iget v0, p0, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->mTextSelectionLayout:I

    return v0
.end method
