.class public final Landroid/view/textclassifier/ConversationActions$Message$Builder;
.super Ljava/lang/Object;
.source "ConversationActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/ConversationActions$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAuthor:Landroid/app/Person;

.field private mExtras:Landroid/os/Bundle;

.field private mReferenceTime:Ljava/time/ZonedDateTime;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/app/Person;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/app/Person;

    iput-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message$Builder;->mAuthor:Landroid/app/Person;

    return-void
.end method


# virtual methods
.method public build()Landroid/view/textclassifier/ConversationActions$Message;
    .registers 8

    new-instance v6, Landroid/view/textclassifier/ConversationActions$Message;

    iget-object v1, p0, Landroid/view/textclassifier/ConversationActions$Message$Builder;->mAuthor:Landroid/app/Person;

    iget-object v2, p0, Landroid/view/textclassifier/ConversationActions$Message$Builder;->mReferenceTime:Ljava/time/ZonedDateTime;

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message$Builder;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_13

    :cond_c
    new-instance v0, Landroid/text/SpannedString;

    iget-object v3, p0, Landroid/view/textclassifier/ConversationActions$Message$Builder;->mText:Ljava/lang/CharSequence;

    invoke-direct {v0, v3}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    :goto_13
    move-object v3, v0

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_1a

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_1a
    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/ConversationActions$Message;-><init>(Landroid/app/Person;Ljava/time/ZonedDateTime;Ljava/lang/CharSequence;Landroid/os/Bundle;Landroid/view/textclassifier/ConversationActions$1;)V

    return-object v6
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/ConversationActions$Message$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/textclassifier/ConversationActions$Message$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setReferenceTime(Ljava/time/ZonedDateTime;)Landroid/view/textclassifier/ConversationActions$Message$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/textclassifier/ConversationActions$Message$Builder;->mReferenceTime:Ljava/time/ZonedDateTime;

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/view/textclassifier/ConversationActions$Message$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/textclassifier/ConversationActions$Message$Builder;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method
