.class public final Landroid/service/controls/Control;
.super Ljava/lang/Object;
.source "Control.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/Control$StatefulBuilder;,
        Landroid/service/controls/Control$StatelessBuilder;,
        Landroid/service/controls/Control$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/controls/Control;",
            ">;"
        }
    .end annotation
.end field

.field private static final NUM_STATUS:I = 0x5

.field public static final STATUS_DISABLED:I = 0x4

.field public static final STATUS_ERROR:I = 0x3

.field public static final STATUS_NOT_FOUND:I = 0x2

.field public static final STATUS_OK:I = 0x1

.field public static final STATUS_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Control"


# instance fields
.field private final mAppIntent:Landroid/app/PendingIntent;

.field private final mControlId:Ljava/lang/String;

.field private final mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

.field private final mCustomColor:Landroid/content/res/ColorStateList;

.field private final mCustomIcon:Landroid/graphics/drawable/Icon;

.field private final mDeviceType:I

.field private final mStatus:I

.field private final mStatusText:Ljava/lang/CharSequence;

.field private final mStructure:Ljava/lang/CharSequence;

.field private final mSubtitle:Ljava/lang/CharSequence;

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mZone:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/controls/Control$1;

    invoke-direct {v0}, Landroid/service/controls/Control$1;-><init>()V

    sput-object v0, Landroid/service/controls/Control;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/controls/Control;->mDeviceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2a

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    goto :goto_2c

    :cond_2a
    iput-object v1, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    :goto_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_39

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    goto :goto_3b

    :cond_39
    iput-object v1, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    :goto_3b
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_56

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    goto :goto_58

    :cond_56
    iput-object v1, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    :goto_58
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_69

    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    goto :goto_6b

    :cond_69
    iput-object v1, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    :goto_6b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/controls/Control;->mStatus:I

    sget-object v0, Landroid/service/controls/templates/ControlTemplateWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/controls/templates/ControlTemplateWrapper;

    invoke-virtual {v0}, Landroid/service/controls/templates/ControlTemplateWrapper;->getWrappedTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v1

    iput-object v1, p0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Landroid/content/res/ColorStateList;ILandroid/service/controls/templates/ControlTemplate;Ljava/lang/CharSequence;)V
    .registers 27

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p7 .. p7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p11 .. p11}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p12 .. p12}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, p1

    iput-object v3, v0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Landroid/service/controls/DeviceTypes;->validDeviceType(I)Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "Control"

    if-nez v4, :cond_3d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid device type:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, v0, Landroid/service/controls/Control;->mDeviceType:I

    goto :goto_3f

    :cond_3d
    iput v1, v0, Landroid/service/controls/Control;->mDeviceType:I

    :goto_3f
    move-object/from16 v4, p3

    iput-object v4, v0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v7, p4

    iput-object v7, v0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    move-object/from16 v8, p5

    iput-object v8, v0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    move-object/from16 v9, p6

    iput-object v9, v0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    move-object/from16 v10, p7

    iput-object v10, v0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    move-object/from16 v11, p9

    iput-object v11, v0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    move-object/from16 v12, p8

    iput-object v12, v0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    if-ltz v2, :cond_64

    const/4 v13, 0x5

    if-lt v2, v13, :cond_61

    goto :goto_64

    :cond_61
    iput v2, v0, Landroid/service/controls/Control;->mStatus:I

    goto :goto_7a

    :cond_64
    :goto_64
    iput v5, v0, Landroid/service/controls/Control;->mStatus:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Status unknown:"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7a
    move-object/from16 v5, p11

    iput-object v5, v0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    move-object/from16 v6, p12

    iput-object v6, v0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic access$000(Landroid/service/controls/Control;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/service/controls/Control;)I
    .registers 2

    iget v0, p0, Landroid/service/controls/Control;->mDeviceType:I

    return v0
.end method

.method static synthetic access$1000(Landroid/service/controls/Control;)Landroid/service/controls/templates/ControlTemplate;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$400(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$500(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$600(Landroid/service/controls/Control;)Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$700(Landroid/service/controls/Control;)Landroid/graphics/drawable/Icon;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method static synthetic access$800(Landroid/service/controls/Control;)Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$900(Landroid/service/controls/Control;)I
    .registers 2

    iget v0, p0, Landroid/service/controls/Control;->mStatus:I

    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAppIntent()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getControlId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    return-object v0
.end method

.method public getControlTemplate()Landroid/service/controls/templates/ControlTemplate;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    return-object v0
.end method

.method public getCustomColor()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCustomIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getDeviceType()I
    .registers 2

    iget v0, p0, Landroid/service/controls/Control;->mDeviceType:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    iget v0, p0, Landroid/service/controls/Control;->mStatus:I

    return v0
.end method

.method public getStatusText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getStructure()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getZone()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget-object v0, p0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/controls/Control;->mDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_26

    :cond_23
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_26
    iget-object v0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    if-eqz v0, :cond_33

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_36

    :cond_33
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_36
    iget-object v0, p0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_48

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4b

    :cond_48
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_4b
    iget-object v0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_58

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5b

    :cond_58
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_5b
    iget v0, p0, Landroid/service/controls/Control;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v0, Landroid/service/controls/templates/ControlTemplateWrapper;

    iget-object v1, p0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    invoke-direct {v0, v1}, Landroid/service/controls/templates/ControlTemplateWrapper;-><init>(Landroid/service/controls/templates/ControlTemplate;)V

    invoke-virtual {v0, p1, p2}, Landroid/service/controls/templates/ControlTemplateWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    return-void
.end method
