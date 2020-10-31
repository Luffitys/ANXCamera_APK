.class Landroid/widget/Spinner$3;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
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
.method public setPrompt(Landroid/widget/Spinner;Ljava/lang/CharSequence;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->originalSetPrompt(Ljava/lang/CharSequence;)V

    return-void
.end method
