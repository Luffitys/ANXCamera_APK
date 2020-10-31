.class public final Landroid/content/pm/SuspendDialogInfo;
.super Ljava/lang/Object;
.source "SuspendDialogInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/SuspendDialogInfo$Builder;,
        Landroid/content/pm/SuspendDialogInfo$ButtonAction;
    }
.end annotation


# static fields
.field public static final BUTTON_ACTION_MORE_DETAILS:I = 0x0

.field public static final BUTTON_ACTION_UNSUSPEND:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/SuspendDialogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final XML_ATTR_BUTTON_ACTION:Ljava/lang/String; = "buttonAction"

.field private static final XML_ATTR_BUTTON_TEXT_RES_ID:Ljava/lang/String; = "buttonTextResId"

.field private static final XML_ATTR_DIALOG_MESSAGE:Ljava/lang/String; = "dialogMessage"

.field private static final XML_ATTR_DIALOG_MESSAGE_RES_ID:Ljava/lang/String; = "dialogMessageResId"

.field private static final XML_ATTR_ICON_RES_ID:Ljava/lang/String; = "iconResId"

.field private static final XML_ATTR_TITLE_RES_ID:Ljava/lang/String; = "titleResId"


# instance fields
.field private final mDialogMessage:Ljava/lang/String;

.field private final mDialogMessageResId:I

.field private final mIconResId:I

.field private final mNeutralButtonAction:I

.field private final mNeutralButtonTextResId:I

.field private final mTitleResId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/SuspendDialogInfo;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/pm/SuspendDialogInfo$1;

    invoke-direct {v0}, Landroid/content/pm/SuspendDialogInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/SuspendDialogInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/content/pm/SuspendDialogInfo$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Landroid/content/pm/SuspendDialogInfo$Builder;->mIconResId:I
    invoke-static {p1}, Landroid/content/pm/SuspendDialogInfo$Builder;->access$000(Landroid/content/pm/SuspendDialogInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    # getter for: Landroid/content/pm/SuspendDialogInfo$Builder;->mTitleResId:I
    invoke-static {p1}, Landroid/content/pm/SuspendDialogInfo$Builder;->access$100(Landroid/content/pm/SuspendDialogInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    # getter for: Landroid/content/pm/SuspendDialogInfo$Builder;->mDialogMessageResId:I
    invoke-static {p1}, Landroid/content/pm/SuspendDialogInfo$Builder;->access$200(Landroid/content/pm/SuspendDialogInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    if-nez v0, :cond_1c

    # getter for: Landroid/content/pm/SuspendDialogInfo$Builder;->mDialogMessage:Ljava/lang/String;
    invoke-static {p1}, Landroid/content/pm/SuspendDialogInfo$Builder;->access$300(Landroid/content/pm/SuspendDialogInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iput-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    # getter for: Landroid/content/pm/SuspendDialogInfo$Builder;->mNeutralButtonTextResId:I
    invoke-static {p1}, Landroid/content/pm/SuspendDialogInfo$Builder;->access$400(Landroid/content/pm/SuspendDialogInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    # getter for: Landroid/content/pm/SuspendDialogInfo$Builder;->mNeutralButtonAction:I
    invoke-static {p1}, Landroid/content/pm/SuspendDialogInfo$Builder;->access$500(Landroid/content/pm/SuspendDialogInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/SuspendDialogInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/SuspendDialogInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/pm/SuspendDialogInfo;
    .registers 8

    new-instance v0, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v0}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    :try_start_5
    const-string v1, "iconResId"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "titleResId"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "buttonTextResId"

    invoke-static {p0, v4, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "buttonAction"

    invoke-static {p0, v5, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "dialogMessageResId"

    invoke-static {p0, v6, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    const-string v6, "dialogMessage"

    invoke-static {p0, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_30

    invoke-virtual {v0, v1}, Landroid/content/pm/SuspendDialogInfo$Builder;->setIcon(I)Landroid/content/pm/SuspendDialogInfo$Builder;

    :cond_30
    if-eqz v3, :cond_35

    invoke-virtual {v0, v3}, Landroid/content/pm/SuspendDialogInfo$Builder;->setTitle(I)Landroid/content/pm/SuspendDialogInfo$Builder;

    :cond_35
    if-eqz v4, :cond_3a

    invoke-virtual {v0, v4}, Landroid/content/pm/SuspendDialogInfo$Builder;->setNeutralButtonText(I)Landroid/content/pm/SuspendDialogInfo$Builder;

    :cond_3a
    if-eqz v2, :cond_40

    invoke-virtual {v0, v2}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(I)Landroid/content/pm/SuspendDialogInfo$Builder;

    goto :goto_45

    :cond_40
    if-eqz v6, :cond_45

    invoke-virtual {v0, v6}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    :cond_45
    :goto_45
    invoke-virtual {v0, v5}, Landroid/content/pm/SuspendDialogInfo$Builder;->setNeutralButtonAction(I)Landroid/content/pm/SuspendDialogInfo$Builder;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_48} :catch_4a

    nop

    goto :goto_52

    :catch_4a
    move-exception v1

    sget-object v2, Landroid/content/pm/SuspendDialogInfo;->TAG:Ljava/lang/String;

    const-string v3, "Exception while parsing from xml. Some fields may default"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_52
    invoke-virtual {v0}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/content/pm/SuspendDialogInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/content/pm/SuspendDialogInfo;

    iget v3, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    iget v4, v1, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    if-ne v3, v4, :cond_36

    iget v3, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    iget v4, v1, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    if-ne v3, v4, :cond_36

    iget v3, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    iget v4, v1, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    if-ne v3, v4, :cond_36

    iget v3, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    iget v4, v1, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    if-ne v3, v4, :cond_36

    iget v3, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    iget v4, v1, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    if-ne v3, v4, :cond_36

    iget-object v3, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_37

    :cond_36
    move v0, v2

    :goto_37
    return v0
.end method

.method public getDialogMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getDialogMessageResId()I
    .registers 2

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    return v0
.end method

.method public getIconResId()I
    .registers 2

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    return v0
.end method

.method public getNeutralButtonAction()I
    .registers 2

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    return v0
.end method

.method public getNeutralButtonTextResId()I
    .registers 2

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    return v0
.end method

.method public getTitleResId()I
    .registers 2

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    add-int/2addr v1, v2

    return v1
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    if-eqz v0, :cond_9

    const-string v1, "iconResId"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_9
    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    if-eqz v0, :cond_13

    const-string/jumbo v1, "titleResId"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_13
    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    if-eqz v0, :cond_1d

    const-string v1, "dialogMessageResId"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    goto :goto_24

    :cond_1d
    iget-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    const-string v1, "dialogMessage"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_24
    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    if-eqz v0, :cond_2d

    const-string v1, "buttonTextResId"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_2d
    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    const-string v1, "buttonAction"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SuspendDialogInfo: {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    const-string v2, " "

    if-eqz v1, :cond_1e

    const-string v1, "mIconId = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    if-eqz v1, :cond_33

    const-string v1, "mTitleResId = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    if-eqz v1, :cond_48

    const-string v1, "mNeutralButtonTextResId = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_48
    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    if-eqz v1, :cond_5e

    const-string v1, "mDialogMessageResId = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    :cond_5e
    iget-object v1, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    if-eqz v1, :cond_71

    const-string v1, "mDialogMessage = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_71
    :goto_71
    const-string v1, "mNeutralButtonAction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
