.class public final Landroid/view/WindowInsetsAnimation$Bounds;
.super Ljava/lang/Object;
.source "WindowInsetsAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowInsetsAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bounds"
.end annotation


# instance fields
.field private final mLowerBound:Landroid/graphics/Insets;

.field private final mUpperBound:Landroid/graphics/Insets;


# direct methods
.method public constructor <init>(Landroid/graphics/Insets;Landroid/graphics/Insets;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/WindowInsetsAnimation$Bounds;->mLowerBound:Landroid/graphics/Insets;

    iput-object p2, p0, Landroid/view/WindowInsetsAnimation$Bounds;->mUpperBound:Landroid/graphics/Insets;

    return-void
.end method


# virtual methods
.method public getLowerBound()Landroid/graphics/Insets;
    .registers 2

    iget-object v0, p0, Landroid/view/WindowInsetsAnimation$Bounds;->mLowerBound:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getUpperBound()Landroid/graphics/Insets;
    .registers 2

    iget-object v0, p0, Landroid/view/WindowInsetsAnimation$Bounds;->mUpperBound:Landroid/graphics/Insets;

    return-object v0
.end method

.method public inset(Landroid/graphics/Insets;)Landroid/view/WindowInsetsAnimation$Bounds;
    .registers 9

    new-instance v0, Landroid/view/WindowInsetsAnimation$Bounds;

    iget-object v1, p0, Landroid/view/WindowInsetsAnimation$Bounds;->mLowerBound:Landroid/graphics/Insets;

    iget v2, p1, Landroid/graphics/Insets;->left:I

    iget v3, p1, Landroid/graphics/Insets;->top:I

    iget v4, p1, Landroid/graphics/Insets;->right:I

    iget v5, p1, Landroid/graphics/Insets;->bottom:I

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/WindowInsets;->insetInsets(Landroid/graphics/Insets;IIII)Landroid/graphics/Insets;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowInsetsAnimation$Bounds;->mUpperBound:Landroid/graphics/Insets;

    iget v3, p1, Landroid/graphics/Insets;->left:I

    iget v4, p1, Landroid/graphics/Insets;->top:I

    iget v5, p1, Landroid/graphics/Insets;->right:I

    iget v6, p1, Landroid/graphics/Insets;->bottom:I

    invoke-static {v2, v3, v4, v5, v6}, Landroid/view/WindowInsets;->insetInsets(Landroid/graphics/Insets;IIII)Landroid/graphics/Insets;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/WindowInsetsAnimation$Bounds;-><init>(Landroid/graphics/Insets;Landroid/graphics/Insets;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bounds{lower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/WindowInsetsAnimation$Bounds;->mLowerBound:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " upper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/WindowInsetsAnimation$Bounds;->mUpperBound:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
