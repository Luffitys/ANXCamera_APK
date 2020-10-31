.class Landroid/app/Notification$TemplateBindResult;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TemplateBindResult"
.end annotation


# instance fields
.field mIconMarginEnd:I

.field mRightIconContainerVisible:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Notification$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$TemplateBindResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconMarginEnd()I
    .registers 2

    iget v0, p0, Landroid/app/Notification$TemplateBindResult;->mIconMarginEnd:I

    return v0
.end method

.method public isRightIconContainerVisible()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/Notification$TemplateBindResult;->mRightIconContainerVisible:Z

    return v0
.end method

.method public setIconMarginEnd(I)V
    .registers 2

    iput p1, p0, Landroid/app/Notification$TemplateBindResult;->mIconMarginEnd:I

    return-void
.end method

.method public setRightIconContainerVisible(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/Notification$TemplateBindResult;->mRightIconContainerVisible:Z

    return-void
.end method
