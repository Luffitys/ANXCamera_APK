.class Lcom/miui/mishare/app/view/TransferIcon$1;
.super Landroid/view/ViewOutlineProvider;
.source "TransferIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/view/TransferIcon;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/mishare/app/view/TransferIcon;


# direct methods
.method constructor <init>(Lcom/miui/mishare/app/view/TransferIcon;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/mishare/app/view/TransferIcon$1;->this$0:Lcom/miui/mishare/app/view/TransferIcon;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method
