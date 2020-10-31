.class public final Landroid/view/textclassifier/ConversationActions$Request$Builder;
.super Ljava/lang/Object;
.source "ConversationActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/ConversationActions$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mConversation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/textclassifier/ConversationActions$Message;",
            ">;"
        }
    .end annotation
.end field

.field private mExtras:Landroid/os/Bundle;

.field private mHints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxSuggestions:I

.field private mTypeConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/ConversationActions$Message;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mMaxSuggestions:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mConversation:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Landroid/view/textclassifier/ConversationActions$Request;
    .registers 9

    new-instance v7, Landroid/view/textclassifier/ConversationActions$Request;

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mConversation:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mTypeConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    if-nez v0, :cond_17

    new-instance v0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->build()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v0

    move-object v2, v0

    goto :goto_18

    :cond_17
    move-object v2, v0

    :goto_18
    iget v3, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mMaxSuggestions:I

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mHints:Ljava/util/List;

    if-nez v0, :cond_24

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    goto :goto_29

    :cond_24
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    :goto_29
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_2f

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_2f
    move-object v5, v0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/textclassifier/ConversationActions$Request;-><init>(Ljava/util/List;Landroid/view/textclassifier/TextClassifier$EntityConfig;ILjava/util/List;Landroid/os/Bundle;Landroid/view/textclassifier/ConversationActions$1;)V

    return-object v7
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/ConversationActions$Request$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setHints(Ljava/util/List;)Landroid/view/textclassifier/ConversationActions$Request$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/textclassifier/ConversationActions$Request$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mHints:Ljava/util/List;

    return-object p0
.end method

.method public setMaxSuggestions(I)Landroid/view/textclassifier/ConversationActions$Request$Builder;
    .registers 4

    const/4 v0, -0x1

    if-lt p1, v0, :cond_6

    iput p1, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mMaxSuggestions:I

    return-object p0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSuggestions has to be greater than or equal to -1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTypeConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/ConversationActions$Request$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mTypeConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    return-object p0
.end method
