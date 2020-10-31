.class public final synthetic Landroid/view/autofill/-$$Lambda$AutofillPopupWindow$DnLs9aVkSgQ89oSTe4P9EweBBks;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic f$0:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/-$$Lambda$AutofillPopupWindow$DnLs9aVkSgQ89oSTe4P9EweBBks;->f$0:[I

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .registers 12

    iget-object v0, p0, Landroid/view/autofill/-$$Lambda$AutofillPopupWindow$DnLs9aVkSgQ89oSTe4P9EweBBks;->f$0:[I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/view/autofill/AutofillPopupWindow;->lambda$update$0([ILandroid/view/View;IIII)V

    return-void
.end method
