.class final enum Lmiui/text/SortKeyGenerator$NameStyle;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lmiui/text/SortKeyGenerator$NameStyle;

.field public static final enum CHINESE:Lmiui/text/SortKeyGenerator$NameStyle;

.field public static final enum CJK:Lmiui/text/SortKeyGenerator$NameStyle;

.field public static final enum JAPANESE:Lmiui/text/SortKeyGenerator$NameStyle;

.field public static final enum KOREAN:Lmiui/text/SortKeyGenerator$NameStyle;

.field public static final enum UNDEFINED:Lmiui/text/SortKeyGenerator$NameStyle;

.field public static final enum WESTERN:Lmiui/text/SortKeyGenerator$NameStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lmiui/text/SortKeyGenerator$NameStyle;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/text/SortKeyGenerator$NameStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/text/SortKeyGenerator$NameStyle;->UNDEFINED:Lmiui/text/SortKeyGenerator$NameStyle;

    new-instance v0, Lmiui/text/SortKeyGenerator$NameStyle;

    const-string v1, "WESTERN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/text/SortKeyGenerator$NameStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/text/SortKeyGenerator$NameStyle;->WESTERN:Lmiui/text/SortKeyGenerator$NameStyle;

    new-instance v0, Lmiui/text/SortKeyGenerator$NameStyle;

    const-string v1, "CJK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/text/SortKeyGenerator$NameStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/text/SortKeyGenerator$NameStyle;->CJK:Lmiui/text/SortKeyGenerator$NameStyle;

    new-instance v0, Lmiui/text/SortKeyGenerator$NameStyle;

    const-string v1, "CHINESE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmiui/text/SortKeyGenerator$NameStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/text/SortKeyGenerator$NameStyle;->CHINESE:Lmiui/text/SortKeyGenerator$NameStyle;

    new-instance v0, Lmiui/text/SortKeyGenerator$NameStyle;

    const-string v1, "JAPANESE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmiui/text/SortKeyGenerator$NameStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/text/SortKeyGenerator$NameStyle;->JAPANESE:Lmiui/text/SortKeyGenerator$NameStyle;

    new-instance v0, Lmiui/text/SortKeyGenerator$NameStyle;

    const-string v1, "KOREAN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lmiui/text/SortKeyGenerator$NameStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/text/SortKeyGenerator$NameStyle;->KOREAN:Lmiui/text/SortKeyGenerator$NameStyle;

    const/4 v1, 0x6

    new-array v1, v1, [Lmiui/text/SortKeyGenerator$NameStyle;

    sget-object v8, Lmiui/text/SortKeyGenerator$NameStyle;->UNDEFINED:Lmiui/text/SortKeyGenerator$NameStyle;

    aput-object v8, v1, v2

    sget-object v2, Lmiui/text/SortKeyGenerator$NameStyle;->WESTERN:Lmiui/text/SortKeyGenerator$NameStyle;

    aput-object v2, v1, v3

    sget-object v2, Lmiui/text/SortKeyGenerator$NameStyle;->CJK:Lmiui/text/SortKeyGenerator$NameStyle;

    aput-object v2, v1, v4

    sget-object v2, Lmiui/text/SortKeyGenerator$NameStyle;->CHINESE:Lmiui/text/SortKeyGenerator$NameStyle;

    aput-object v2, v1, v5

    sget-object v2, Lmiui/text/SortKeyGenerator$NameStyle;->JAPANESE:Lmiui/text/SortKeyGenerator$NameStyle;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lmiui/text/SortKeyGenerator$NameStyle;->$VALUES:[Lmiui/text/SortKeyGenerator$NameStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static guessCJKNameStyle(Ljava/lang/String;I)Lmiui/text/SortKeyGenerator$NameStyle;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_3

    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v2

    invoke-static {v2}, Lmiui/text/SortKeyGenerator$NameStyle;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object p0, Lmiui/text/SortKeyGenerator$NameStyle;->JAPANESE:Lmiui/text/SortKeyGenerator$NameStyle;

    return-object p0

    :cond_0
    invoke-static {v2}, Lmiui/text/SortKeyGenerator$NameStyle;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p0, Lmiui/text/SortKeyGenerator$NameStyle;->KOREAN:Lmiui/text/SortKeyGenerator$NameStyle;

    return-object p0

    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-static {v2}, Lmiui/text/SortKeyGenerator$NameStyle;->isChineseUnicode([C)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p0, Lmiui/text/SortKeyGenerator$NameStyle;->CHINESE:Lmiui/text/SortKeyGenerator$NameStyle;

    return-object p0

    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_0

    :cond_3
    sget-object p0, Lmiui/text/SortKeyGenerator$NameStyle;->CJK:Lmiui/text/SortKeyGenerator$NameStyle;

    return-object p0
.end method

.method public static guessFullNameStyle(Ljava/lang/String;)Lmiui/text/SortKeyGenerator$NameStyle;
    .locals 5

    if-nez p0, :cond_0

    sget-object p0, Lmiui/text/SortKeyGenerator$NameStyle;->UNDEFINED:Lmiui/text/SortKeyGenerator$NameStyle;

    return-object p0

    :cond_0
    sget-object v0, Lmiui/text/SortKeyGenerator$NameStyle;->UNDEFINED:Lmiui/text/SortKeyGenerator$NameStyle;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    invoke-static {v0}, Lmiui/text/SortKeyGenerator$NameStyle;->isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v0}, Lmiui/text/SortKeyGenerator$NameStyle;->isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0, v2}, Lmiui/text/SortKeyGenerator$NameStyle;->guessCJKNameStyle(Ljava/lang/String;I)Lmiui/text/SortKeyGenerator$NameStyle;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v0}, Lmiui/text/SortKeyGenerator$NameStyle;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object p0, Lmiui/text/SortKeyGenerator$NameStyle;->JAPANESE:Lmiui/text/SortKeyGenerator$NameStyle;

    return-object p0

    :cond_2
    invoke-static {v0}, Lmiui/text/SortKeyGenerator$NameStyle;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lmiui/text/SortKeyGenerator$NameStyle;->KOREAN:Lmiui/text/SortKeyGenerator$NameStyle;

    return-object p0

    :cond_3
    sget-object v0, Lmiui/text/SortKeyGenerator$NameStyle;->WESTERN:Lmiui/text/SortKeyGenerator$NameStyle;

    :cond_4
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private static isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isChineseUnicode([C)Z
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-char v3, p0, v2

    invoke-static {}, Lmiui/text/ChinesePinyinConverter;->getInstance()Lmiui/text/ChinesePinyinConverter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lmiui/text/ChinesePinyinConverter;->isChinesePinyinKnown(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/text/SortKeyGenerator$NameStyle;
    .locals 1

    const-class v0, Lmiui/text/SortKeyGenerator$NameStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiui/text/SortKeyGenerator$NameStyle;

    return-object p0
.end method

.method public static values()[Lmiui/text/SortKeyGenerator$NameStyle;
    .locals 1

    sget-object v0, Lmiui/text/SortKeyGenerator$NameStyle;->$VALUES:[Lmiui/text/SortKeyGenerator$NameStyle;

    invoke-virtual {v0}, [Lmiui/text/SortKeyGenerator$NameStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/text/SortKeyGenerator$NameStyle;

    return-object v0
.end method
