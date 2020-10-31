.class public final synthetic Landroid/hardware/radio/-$$Lambda$ProgramList$aDYMynqVdAUqeKXIxfNtN1u67zs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/radio/ProgramList$OnCompleteListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;

.field public final synthetic f$1:Landroid/hardware/radio/ProgramList$OnCompleteListener;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/hardware/radio/ProgramList$OnCompleteListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/-$$Lambda$ProgramList$aDYMynqVdAUqeKXIxfNtN1u67zs;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/hardware/radio/-$$Lambda$ProgramList$aDYMynqVdAUqeKXIxfNtN1u67zs;->f$1:Landroid/hardware/radio/ProgramList$OnCompleteListener;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/radio/-$$Lambda$ProgramList$aDYMynqVdAUqeKXIxfNtN1u67zs;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/radio/-$$Lambda$ProgramList$aDYMynqVdAUqeKXIxfNtN1u67zs;->f$1:Landroid/hardware/radio/ProgramList$OnCompleteListener;

    invoke-static {v0, v1}, Landroid/hardware/radio/ProgramList;->lambda$addOnCompleteListener$0(Ljava/util/concurrent/Executor;Landroid/hardware/radio/ProgramList$OnCompleteListener;)V

    return-void
.end method
