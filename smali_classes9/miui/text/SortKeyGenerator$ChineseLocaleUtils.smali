.class Lmiui/text/SortKeyGenerator$ChineseLocaleUtils;
.super Lmiui/text/SortKeyGenerator$BaseGenerator;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/text/SortKeyGenerator;


# direct methods
.method private constructor <init>(Lmiui/text/SortKeyGenerator;)V
    .locals 1

    iput-object p1, p0, Lmiui/text/SortKeyGenerator$ChineseLocaleUtils;->this$0:Lmiui/text/SortKeyGenerator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/text/SortKeyGenerator$BaseGenerator;-><init>(Lmiui/text/SortKeyGenerator;Lmiui/text/SortKeyGenerator$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/text/SortKeyGenerator;Lmiui/text/SortKeyGenerator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/text/SortKeyGenerator$ChineseLocaleUtils;-><init>(Lmiui/text/SortKeyGenerator;)V

    return-void
.end method


# virtual methods
.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lmiui/text/ChinesePinyinConverter;->getInstance()Lmiui/text/ChinesePinyinConverter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/text/ChinesePinyinConverter;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/text/ChinesePinyinConverter$Token;

    const/4 v1, 0x2

    iget v2, v0, Lmiui/text/ChinesePinyinConverter$Token;->type:I

    const/16 v3, 0x20

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, v0, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    iget-object v1, v0, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, v0, Lmiui/text/ChinesePinyinConverter$Token;->source:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-super {p0, p1}, Lmiui/text/SortKeyGenerator$BaseGenerator;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
