.class public final synthetic Landroid/hardware/radio/-$$Lambda$1DA3e7WM2G0cVcFyFUhdDG0CYnw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/radio/ProgramList$OnCompleteListener;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/ProgramList$OnCompleteListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/-$$Lambda$1DA3e7WM2G0cVcFyFUhdDG0CYnw;->f$0:Landroid/hardware/radio/ProgramList$OnCompleteListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/radio/-$$Lambda$1DA3e7WM2G0cVcFyFUhdDG0CYnw;->f$0:Landroid/hardware/radio/ProgramList$OnCompleteListener;

    invoke-interface {v0}, Landroid/hardware/radio/ProgramList$OnCompleteListener;->onComplete()V

    return-void
.end method
