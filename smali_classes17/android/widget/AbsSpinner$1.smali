.class Landroid/widget/AbsSpinner$1;
.super Ljava/lang/Object;
.source "AbsSpinner.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAdapter(Landroid/widget/AbsSpinner;Landroid/widget/SpinnerAdapter;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/widget/AbsSpinner;->originalSetAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method
