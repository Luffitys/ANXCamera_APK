.class public final synthetic Landroid/widget/-$$Lambda$DatePicker$AnJPL5BrPXPJa-Oc-WUAB-HJq84;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/DatePicker;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/DatePicker;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/-$$Lambda$DatePicker$AnJPL5BrPXPJa-Oc-WUAB-HJq84;->f$0:Landroid/widget/DatePicker;

    iput-object p2, p0, Landroid/widget/-$$Lambda$DatePicker$AnJPL5BrPXPJa-Oc-WUAB-HJq84;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onDateChanged(Landroid/widget/DatePicker;III)V
    .registers 11

    iget-object v0, p0, Landroid/widget/-$$Lambda$DatePicker$AnJPL5BrPXPJa-Oc-WUAB-HJq84;->f$0:Landroid/widget/DatePicker;

    iget-object v1, p0, Landroid/widget/-$$Lambda$DatePicker$AnJPL5BrPXPJa-Oc-WUAB-HJq84;->f$1:Landroid/content/Context;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/DatePicker;->lambda$new$0$DatePicker(Landroid/content/Context;Landroid/widget/DatePicker;III)V

    return-void
.end method
