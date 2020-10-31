.class public final Landroid/view/textclassifier/ConversationActions$Message;
.super Ljava/lang/Object;
.source "ConversationActions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/ConversationActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/ConversationActions$Message$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/ConversationActions$Message;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERSON_USER_OTHERS:Landroid/app/Person;

.field public static final PERSON_USER_SELF:Landroid/app/Person;


# instance fields
.field private final mAuthor:Landroid/app/Person;

.field private final mExtras:Landroid/os/Bundle;

.field private final mReferenceTime:Ljava/time/ZonedDateTime;

.field private final mText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    const-string/jumbo v1, "text-classifier-conversation-actions-user-self"

    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    sput-object v0, Landroid/view/textclassifier/ConversationActions$Message;->PERSON_USER_SELF:Landroid/app/Person;

    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    const-string/jumbo v1, "text-classifier-conversation-actions-user-others"

    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    sput-object v0, Landroid/view/textclassifier/ConversationActions$Message;->PERSON_USER_OTHERS:Landroid/app/Person;

    new-instance v0, Landroid/view/textclassifier/ConversationActions$Message$1;

    invoke-direct {v0}, Landroid/view/textclassifier/ConversationActions$Message$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/ConversationActions$Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/app/Person;Ljava/time/ZonedDateTime;Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/ConversationActions$Message;->mAuthor:Landroid/app/Person;

    iput-object p2, p0, Landroid/view/textclassifier/ConversationActions$Message;->mReferenceTime:Ljava/time/ZonedDateTime;

    iput-object p3, p0, Landroid/view/textclassifier/ConversationActions$Message;->mText:Ljava/lang/CharSequence;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p4

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Person;Ljava/time/ZonedDateTime;Ljava/lang/CharSequence;Landroid/os/Bundle;Landroid/view/textclassifier/ConversationActions$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/textclassifier/ConversationActions$Message;-><init>(Landroid/app/Person;Ljava/time/ZonedDateTime;Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/Person;

    iput-object v1, p0, Landroid/view/textclassifier/ConversationActions$Message;->mAuthor:Landroid/app/Person;

    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_1f

    :cond_14
    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/time/format/DateTimeFormatter;->ISO_ZONED_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-static {v0, v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_1f
    iput-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mReferenceTime:Ljava/time/ZonedDateTime;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/textclassifier/ConversationActions$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/textclassifier/ConversationActions$Message;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthor()Landroid/app/Person;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mAuthor:Landroid/app/Person;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getReferenceTime()Ljava/time/ZonedDateTime;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mReferenceTime:Ljava/time/ZonedDateTime;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mAuthor:Landroid/app/Person;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mReferenceTime:Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mReferenceTime:Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_1c

    sget-object v1, Ljava/time/format/DateTimeFormatter;->ISO_ZONED_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, v1}, Ljava/time/ZonedDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1c
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
