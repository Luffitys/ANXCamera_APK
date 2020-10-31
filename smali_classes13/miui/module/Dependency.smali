.class public Lmiui/module/Dependency;
.super Ljava/lang/Object;
.source "Dependency.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/module/Dependency$Level;
    }
.end annotation


# static fields
.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_INSTALLED:I = 0x2

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_OPTIONAL:I = 0x1


# instance fields
.field private level:Lmiui/module/Dependency$Level;

.field private name:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevel()Lmiui/module/Dependency$Level;
    .registers 2

    iget-object v0, p0, Lmiui/module/Dependency;->level:Lmiui/module/Dependency$Level;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/module/Dependency;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lmiui/module/Dependency;->type:I

    return v0
.end method

.method public setLevel(Lmiui/module/Dependency$Level;)V
    .registers 2

    iput-object p1, p0, Lmiui/module/Dependency;->level:Lmiui/module/Dependency$Level;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/module/Dependency;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Lmiui/module/Dependency;->type:I

    return-void
.end method
