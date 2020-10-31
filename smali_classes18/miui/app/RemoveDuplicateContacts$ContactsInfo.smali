.class public Lmiui/app/RemoveDuplicateContacts$ContactsInfo;
.super Ljava/lang/Object;
.source "RemoveDuplicateContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/RemoveDuplicateContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactsInfo"
.end annotation


# instance fields
.field private mCount:I

.field private mEmails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mPhones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoId:J

.field private mRawContactId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/util/List;Ljava/util/List;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mPhotoId:J

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, ""

    goto :goto_f

    :cond_e
    move-object v0, p3

    :goto_f
    iput-object v0, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mName:Ljava/lang/String;

    iput-object p4, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mPhones:Ljava/util/List;

    iput-object p5, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mEmails:Ljava/util/List;

    iput-wide p6, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mRawContactId:J

    return-void
.end method

.method public constructor <init>(Lmiui/app/RemoveDuplicateContacts$RawContactData;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mPhotoId:J

    iput-wide v0, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mPhotoId:J

    iget-object v0, p1, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, ""

    goto :goto_14

    :cond_12
    iget-object v0, p1, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mName:Ljava/lang/String;

    :goto_14
    iput-object v0, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->getDatas()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mPhones:Ljava/util/List;

    iput p2, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mCount:I

    invoke-virtual {p1}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->getRawContactId()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mRawContactId:J

    invoke-virtual {p1}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->getDatas()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mEmails:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget v0, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mCount:I

    return v0
.end method

.method public getEmails()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mEmails:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhones()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mPhones:Ljava/util/List;

    return-object v0
.end method

.method public getPhotoId()J
    .registers 3

    iget-wide v0, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mPhotoId:J

    return-wide v0
.end method

.method public getRawContactId()J
    .registers 3

    iget-wide v0, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mRawContactId:J

    return-wide v0
.end method
