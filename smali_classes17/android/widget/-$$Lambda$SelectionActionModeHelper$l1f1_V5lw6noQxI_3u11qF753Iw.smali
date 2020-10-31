.class public final synthetic Landroid/widget/-$$Lambda$SelectionActionModeHelper$l1f1_V5lw6noQxI_3u11qF753Iw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/widget/SelectionActionModeHelper;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/SelectionActionModeHelper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/-$$Lambda$SelectionActionModeHelper$l1f1_V5lw6noQxI_3u11qF753Iw;->f$0:Landroid/widget/SelectionActionModeHelper;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/-$$Lambda$SelectionActionModeHelper$l1f1_V5lw6noQxI_3u11qF753Iw;->f$0:Landroid/widget/SelectionActionModeHelper;

    check-cast p1, Landroid/widget/SelectionActionModeHelper$SelectionResult;

    invoke-static {v0, p1}, Landroid/widget/SelectionActionModeHelper;->lambda$l1f1_V5lw6noQxI_3u11qF753Iw(Landroid/widget/SelectionActionModeHelper;Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void
.end method
