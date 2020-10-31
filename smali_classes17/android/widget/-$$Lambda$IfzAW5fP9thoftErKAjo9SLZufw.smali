.class public final synthetic Landroid/widget/-$$Lambda$IfzAW5fP9thoftErKAjo9SLZufw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/-$$Lambda$IfzAW5fP9thoftErKAjo9SLZufw;->f$0:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/widget/-$$Lambda$IfzAW5fP9thoftErKAjo9SLZufw;->f$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
