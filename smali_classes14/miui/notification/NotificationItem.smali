.class public Lmiui/notification/NotificationItem;
.super Ljava/lang/Object;
.source "NotificationItem.java"


# instance fields
.field public action:Ljava/lang/String;

.field public actionIcon:Landroid/graphics/drawable/Drawable;

.field public clearIntent:Landroid/app/PendingIntent;

.field public clickActionIntent:Landroid/app/PendingIntent;

.field public clickIntent:Landroid/app/PendingIntent;

.field public content:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public id:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/notification/NotificationItem;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getActionIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lmiui/notification/NotificationItem;->actionIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getClearIntent()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lmiui/notification/NotificationItem;->clearIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getClickActionIntent()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lmiui/notification/NotificationItem;->clickActionIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getClickIntent()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lmiui/notification/NotificationItem;->clickIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/notification/NotificationItem;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lmiui/notification/NotificationItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Lmiui/notification/NotificationItem;->id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/notification/NotificationItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/notification/NotificationItem;->action:Ljava/lang/String;

    return-void
.end method

.method public setActionIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lmiui/notification/NotificationItem;->actionIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setClearIntent(Landroid/app/PendingIntent;)V
    .registers 2

    iput-object p1, p0, Lmiui/notification/NotificationItem;->clearIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setClickActionIntent(Landroid/app/PendingIntent;)V
    .registers 2

    iput-object p1, p0, Lmiui/notification/NotificationItem;->clickActionIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setClickIntent(Landroid/app/PendingIntent;)V
    .registers 2

    iput-object p1, p0, Lmiui/notification/NotificationItem;->clickIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/notification/NotificationItem;->content:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lmiui/notification/NotificationItem;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setId(I)V
    .registers 2

    iput p1, p0, Lmiui/notification/NotificationItem;->id:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/notification/NotificationItem;->title:Ljava/lang/String;

    return-void
.end method
