.class public Lcom/miui/internal/search/PinyinMatcher;
.super Ljava/lang/Object;
.source "PinyinMatcher.java"


# static fields
.field private static SHENGMU:[Ljava/lang/String;

.field private static YUNMU:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 36

    const-string v0, "b"

    const-string v1, "p"

    const-string v2, "m"

    const-string v3, "f"

    const-string v4, "d"

    const-string v5, "t"

    const-string v6, "n"

    const-string v7, "l"

    const-string v8, "g"

    const-string v9, "k"

    const-string v10, "h"

    const-string v11, "j"

    const-string v12, "q"

    const-string v13, "x"

    const-string v14, "z"

    const-string v15, "c"

    const-string v16, "s"

    const-string v17, "zh"

    const-string v18, "ch"

    const-string v19, "sh"

    const-string v20, "r"

    const-string v21, "y"

    const-string v22, "w"

    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/search/PinyinMatcher;->SHENGMU:[Ljava/lang/String;

    const-string v1, "a"

    const-string v2, "o"

    const-string v3, "e"

    const-string v4, "i"

    const-string v5, "u"

    const-string v6, "v"

    const-string v7, "ai"

    const-string v8, "ei"

    const-string v9, "ui"

    const-string v10, "ao"

    const-string v11, "ou"

    const-string v12, "iu"

    const-string v13, "ia"

    const-string v14, "ie"

    const-string v15, "ve"

    const-string v16, "er"

    const-string v17, "an"

    const-string v18, "en"

    const-string v19, "in"

    const-string v20, "un"

    const-string v21, "vn"

    const-string v22, "ang"

    const-string v23, "eng"

    const-string v24, "ing"

    const-string v25, "ong"

    const-string v26, "iao"

    const-string v27, "ian"

    const-string v28, "iang"

    const-string v29, "iong"

    const-string v30, "ua"

    const-string v31, "uo"

    const-string v32, "uai"

    const-string v33, "uan"

    const-string v34, "van"

    const-string v35, "uang"

    filled-new-array/range {v1 .. v35}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/search/PinyinMatcher;->YUNMU:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pinyinLevenshtein(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/internal/search/PinyinMatcher;->splitPinyin(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/miui/internal/search/PinyinMatcher;->splitPinyin(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/miui/internal/search/PinyinMatcher$1;

    invoke-direct {v2}, Lcom/miui/internal/search/PinyinMatcher$1;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/miui/internal/search/SearchUtils;->Levenshtein([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static splitPinyin(Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 9

    if-nez p1, :cond_6b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5e

    sget-object v1, Lcom/miui/internal/search/PinyinMatcher;->SHENGMU:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_2b

    aget-object v5, v1, v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2b

    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_2b
    :goto_2b
    sget-object v1, Lcom/miui/internal/search/PinyinMatcher;->YUNMU:[Ljava/lang/String;

    array-length v2, v1

    :goto_2e
    if-ge v3, v2, :cond_5d

    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5d

    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_5d
    :goto_5d
    goto :goto_7

    :cond_5e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Correction not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
