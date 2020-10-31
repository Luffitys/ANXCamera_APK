.class public final synthetic Landroid/app/-$$Lambda$FragmentTransition$PZ32bJ_FSMpbzYzBl8x73NJPidQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$FragmentTransition$PZ32bJ_FSMpbzYzBl8x73NJPidQ;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/app/-$$Lambda$FragmentTransition$PZ32bJ_FSMpbzYzBl8x73NJPidQ;->f$0:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/app/FragmentTransition;->lambda$replaceHide$0(Ljava/util/ArrayList;)V

    return-void
.end method
