.class public final synthetic Landroid/hardware/radio/-$$Lambda$ProgramList$pKu0Zp5jwjix619hfB_Imj8Ke_g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/hardware/radio/ProgramList;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/ProgramList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/-$$Lambda$ProgramList$pKu0Zp5jwjix619hfB_Imj8Ke_g;->f$0:Landroid/hardware/radio/ProgramList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/radio/-$$Lambda$ProgramList$pKu0Zp5jwjix619hfB_Imj8Ke_g;->f$0:Landroid/hardware/radio/ProgramList;

    check-cast p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/ProgramList;->lambda$apply$2$ProgramList(Landroid/hardware/radio/ProgramSelector$Identifier;)V

    return-void
.end method
