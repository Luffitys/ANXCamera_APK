.class public abstract Landroid/hardware/radio/ProgramList$ListCallback;
.super Ljava/lang/Object;
.source "ProgramList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ProgramList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ListCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChanged(Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .registers 2

    return-void
.end method

.method public onItemRemoved(Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .registers 2

    return-void
.end method
