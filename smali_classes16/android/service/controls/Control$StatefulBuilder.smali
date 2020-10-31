.class public final Landroid/service/controls/Control$StatefulBuilder;
.super Ljava/lang/Object;
.source "Control.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/Control;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatefulBuilder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatefulBuilder"


# instance fields
.field private mAppIntent:Landroid/app/PendingIntent;

.field private mControlId:Ljava/lang/String;

.field private mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

.field private mCustomColor:Landroid/content/res/ColorStateList;

.field private mCustomIcon:Landroid/graphics/drawable/Icon;

.field private mDeviceType:I

.field private mStatus:I

.field private mStatusText:Ljava/lang/CharSequence;

.field private mStructure:Ljava/lang/CharSequence;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mZone:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/service/controls/Control;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mDeviceType:I

    const-string v1, ""

    iput-object v1, p0, Landroid/service/controls/Control$StatefulBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/service/controls/Control$StatefulBuilder;->mSubtitle:Ljava/lang/CharSequence;

    iput v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatus:I

    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    iput-object v1, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatusText:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Landroid/service/controls/Control;->mControlId:Ljava/lang/String;
    invoke-static {p1}, Landroid/service/controls/Control;->access$000(Landroid/service/controls/Control;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlId:Ljava/lang/String;

    # getter for: Landroid/service/controls/Control;->mDeviceType:I
    invoke-static {p1}, Landroid/service/controls/Control;->access$100(Landroid/service/controls/Control;)I

    move-result v0

    iput v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mDeviceType:I

    # getter for: Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/service/controls/Control;->access$200(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mTitle:Ljava/lang/CharSequence;

    # getter for: Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/service/controls/Control;->access$300(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mSubtitle:Ljava/lang/CharSequence;

    # getter for: Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/service/controls/Control;->access$400(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mStructure:Ljava/lang/CharSequence;

    # getter for: Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/service/controls/Control;->access$500(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mZone:Ljava/lang/CharSequence;

    # getter for: Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;
    invoke-static {p1}, Landroid/service/controls/Control;->access$600(Landroid/service/controls/Control;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mAppIntent:Landroid/app/PendingIntent;

    # getter for: Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;
    invoke-static {p1}, Landroid/service/controls/Control;->access$700(Landroid/service/controls/Control;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomIcon:Landroid/graphics/drawable/Icon;

    # getter for: Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;
    invoke-static {p1}, Landroid/service/controls/Control;->access$800(Landroid/service/controls/Control;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomColor:Landroid/content/res/ColorStateList;

    # getter for: Landroid/service/controls/Control;->mStatus:I
    invoke-static {p1}, Landroid/service/controls/Control;->access$900(Landroid/service/controls/Control;)I

    move-result v0

    iput v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatus:I

    # getter for: Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;
    invoke-static {p1}, Landroid/service/controls/Control;->access$1000(Landroid/service/controls/Control;)Landroid/service/controls/templates/ControlTemplate;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    # getter for: Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/service/controls/Control;->access$1100(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatusText:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mDeviceType:I

    const-string v1, ""

    iput-object v1, p0, Landroid/service/controls/Control$StatefulBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/service/controls/Control$StatefulBuilder;->mSubtitle:Ljava/lang/CharSequence;

    iput v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatus:I

    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    iput-object v1, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatusText:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlId:Ljava/lang/String;

    iput-object p2, p0, Landroid/service/controls/Control$StatefulBuilder;->mAppIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public build()Landroid/service/controls/Control;
    .registers 15

    new-instance v13, Landroid/service/controls/Control;

    iget-object v1, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlId:Ljava/lang/String;

    iget v2, p0, Landroid/service/controls/Control$StatefulBuilder;->mDeviceType:I

    iget-object v3, p0, Landroid/service/controls/Control$StatefulBuilder;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/service/controls/Control$StatefulBuilder;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/service/controls/Control$StatefulBuilder;->mStructure:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/service/controls/Control$StatefulBuilder;->mZone:Ljava/lang/CharSequence;

    iget-object v7, p0, Landroid/service/controls/Control$StatefulBuilder;->mAppIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomIcon:Landroid/graphics/drawable/Icon;

    iget-object v9, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomColor:Landroid/content/res/ColorStateList;

    iget v10, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatus:I

    iget-object v11, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    iget-object v12, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatusText:Ljava/lang/CharSequence;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/service/controls/Control;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Landroid/content/res/ColorStateList;ILandroid/service/controls/templates/ControlTemplate;Ljava/lang/CharSequence;)V

    return-object v13
.end method

.method public setAppIntent(Landroid/app/PendingIntent;)Landroid/service/controls/Control$StatefulBuilder;
    .registers 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mAppIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setControlId(Ljava/lang/String;)Landroid/service/controls/Control$StatefulBuilder;
    .registers 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlId:Ljava/lang/String;

    return-object p0
.end method

.method public setControlTemplate(Landroid/service/controls/templates/ControlTemplate;)Landroid/service/controls/Control$StatefulBuilder;
    .registers 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    return-object p0
.end method

.method public setCustomColor(Landroid/content/res/ColorStateList;)Landroid/service/controls/Control$StatefulBuilder;
    .registers 2

    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public setCustomIcon(Landroid/graphics/drawable/Icon;)Landroid/service/controls/Control$StatefulBuilder;
    .registers 2

    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public setDeviceType(I)Landroid/service/controls/Control$StatefulBuilder;
    .registers 4

    invoke-static {p1}, Landroid/service/controls/DeviceTypes;->validDeviceType(I)Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid device type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatefulBuilder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mDeviceType:I

    goto :goto_22

    :cond_20
    iput p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mDeviceType:I

    :goto_22
    return-object p0
.end method

.method public setStatus(I)Landroid/service/controls/Control$StatefulBuilder;
    .registers 4

    if-ltz p1, :cond_9

    const/4 v0, 0x5

    if-lt p1, v0, :cond_6

    goto :goto_9

    :cond_6
    iput p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatus:I

    goto :goto_22

    :cond_9
    :goto_9
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatus:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatefulBuilder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    return-object p0
.end method

.method public setStatusText(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatefulBuilder;
    .registers 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatusText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setStructure(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatefulBuilder;
    .registers 2

    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mStructure:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatefulBuilder;
    .registers 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatefulBuilder;
    .registers 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setZone(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatefulBuilder;
    .registers 2

    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mZone:Ljava/lang/CharSequence;

    return-object p0
.end method
