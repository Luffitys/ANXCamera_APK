.class Landroid/widget/GridLayout$5;
.super Landroid/widget/GridLayout$Alignment;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/GridLayout;->createSwitchingAlignment(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Alignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ltr:Landroid/widget/GridLayout$Alignment;

.field final synthetic val$rtl:Landroid/widget/GridLayout$Alignment;


# direct methods
.method constructor <init>(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/GridLayout$5;->val$ltr:Landroid/widget/GridLayout$Alignment;

    iput-object p2, p0, Landroid/widget/GridLayout$5;->val$rtl:Landroid/widget/GridLayout$Alignment;

    invoke-direct {p0}, Landroid/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/widget/GridLayout$5;->val$ltr:Landroid/widget/GridLayout$Alignment;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/widget/GridLayout$5;->val$rtl:Landroid/widget/GridLayout$Alignment;

    :goto_b
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    move-result v0

    return v0
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/widget/GridLayout$5;->val$ltr:Landroid/widget/GridLayout$Alignment;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/widget/GridLayout$5;->val$rtl:Landroid/widget/GridLayout$Alignment;

    :goto_b
    invoke-virtual {v0, p1, p2}, Landroid/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v0

    return v0
.end method
