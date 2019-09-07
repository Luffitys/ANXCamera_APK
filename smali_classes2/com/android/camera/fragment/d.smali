.class public final synthetic Lcom/android/camera/fragment/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ub:Lcom/android/camera/fragment/FragmentMainContent;

.field private final synthetic vb:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/FragmentMainContent;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/d;->ub:Lcom/android/camera/fragment/FragmentMainContent;

    iput-boolean p2, p0, Lcom/android/camera/fragment/d;->vb:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/d;->ub:Lcom/android/camera/fragment/FragmentMainContent;

    iget-boolean p0, p0, Lcom/android/camera/fragment/d;->vb:Z

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/FragmentMainContent;->f(Z)V

    return-void
.end method
