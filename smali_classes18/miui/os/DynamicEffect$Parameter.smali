.class public Lmiui/os/DynamicEffect$Parameter;
.super Ljava/lang/Object;
.source "DynamicEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/os/DynamicEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameter"
.end annotation


# instance fields
.field private mParameter:Landroid/os/DynamicEffect$Parameter;


# direct methods
.method public constructor <init>(Landroid/os/DynamicEffect$Parameter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/os/DynamicEffect$Parameter;->mParameter:Landroid/os/DynamicEffect$Parameter;

    return-void
.end method


# virtual methods
.method public get()Landroid/os/DynamicEffect$Parameter;
    .registers 2

    iget-object v0, p0, Lmiui/os/DynamicEffect$Parameter;->mParameter:Landroid/os/DynamicEffect$Parameter;

    return-object v0
.end method
