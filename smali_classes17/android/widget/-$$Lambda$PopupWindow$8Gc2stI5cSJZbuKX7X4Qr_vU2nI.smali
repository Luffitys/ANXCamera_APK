.class public final synthetic Landroid/widget/-$$Lambda$PopupWindow$8Gc2stI5cSJZbuKX7X4Qr_vU2nI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/PopupWindow;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/PopupWindow;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/-$$Lambda$PopupWindow$8Gc2stI5cSJZbuKX7X4Qr_vU2nI;->f$0:Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 20

    move-object v0, p0

    iget-object v0, v0, Landroid/widget/-$$Lambda$PopupWindow$8Gc2stI5cSJZbuKX7X4Qr_vU2nI;->f$0:Landroid/widget/PopupWindow;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/widget/PopupWindow;->lambda$new$0$PopupWindow(Landroid/view/View;IIIIIIII)V

    return-void
.end method
