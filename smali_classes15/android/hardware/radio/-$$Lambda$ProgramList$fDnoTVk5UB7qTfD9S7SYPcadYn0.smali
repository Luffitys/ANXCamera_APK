.class public final synthetic Landroid/hardware/radio/-$$Lambda$ProgramList$fDnoTVk5UB7qTfD9S7SYPcadYn0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/hardware/radio/ProgramSelector$Identifier;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/-$$Lambda$ProgramList$fDnoTVk5UB7qTfD9S7SYPcadYn0;->f$0:Landroid/hardware/radio/ProgramSelector$Identifier;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/radio/-$$Lambda$ProgramList$fDnoTVk5UB7qTfD9S7SYPcadYn0;->f$0:Landroid/hardware/radio/ProgramSelector$Identifier;

    check-cast p1, Landroid/hardware/radio/ProgramList$ListCallback;

    invoke-static {v0, p1}, Landroid/hardware/radio/ProgramList;->lambda$putLocked$5(Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/ProgramList$ListCallback;)V

    return-void
.end method
