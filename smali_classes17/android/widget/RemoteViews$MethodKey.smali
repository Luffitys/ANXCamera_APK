.class Landroid/widget/RemoteViews$MethodKey;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MethodKey"
.end annotation


# instance fields
.field public methodName:Ljava/lang/String;

.field public paramClass:Ljava/lang/Class;

.field public targetClass:Ljava/lang/Class;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/widget/RemoteViews$MethodKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/widget/RemoteViews$MethodKey;

    iget-object v2, v0, Landroid/widget/RemoteViews$MethodKey;->targetClass:Ljava/lang/Class;

    iget-object v3, p0, Landroid/widget/RemoteViews$MethodKey;->targetClass:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, v0, Landroid/widget/RemoteViews$MethodKey;->paramClass:Ljava/lang/Class;

    iget-object v3, p0, Landroid/widget/RemoteViews$MethodKey;->paramClass:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, v0, Landroid/widget/RemoteViews$MethodKey;->methodName:Ljava/lang/String;

    iget-object v3, p0, Landroid/widget/RemoteViews$MethodKey;->methodName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    nop

    :goto_2a
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Landroid/widget/RemoteViews$MethodKey;->targetClass:Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/RemoteViews$MethodKey;->paramClass:Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/RemoteViews$MethodKey;->methodName:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public set(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Landroid/widget/RemoteViews$MethodKey;->targetClass:Ljava/lang/Class;

    iput-object p2, p0, Landroid/widget/RemoteViews$MethodKey;->paramClass:Ljava/lang/Class;

    iput-object p3, p0, Landroid/widget/RemoteViews$MethodKey;->methodName:Ljava/lang/String;

    return-void
.end method
