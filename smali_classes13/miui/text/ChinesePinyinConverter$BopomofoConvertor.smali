.class Lmiui/text/ChinesePinyinConverter$BopomofoConvertor;
.super Ljava/lang/Object;
.source "ChinesePinyinConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/text/ChinesePinyinConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BopomofoConvertor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;
    }
.end annotation


# static fields
.field private static final sPinyinToZhuyin:[Ljava/lang/String;

.field private static final sRoot:Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;


# direct methods
.method static constructor <clinit>()V
    .registers 166

    const-string v0, "b"

    const-string v1, "\u3105"

    const-string v2, "p"

    const-string v3, "\u3106"

    const-string v4, "m"

    const-string v5, "\u3107"

    const-string v6, "f"

    const-string v7, "\u3108"

    const-string v8, "d"

    const-string v9, "\u3109"

    const-string v10, "t"

    const-string v11, "\u310a"

    const-string v12, "n"

    const-string v13, "\u310b"

    const-string v14, "l"

    const-string v15, "\u310c"

    const-string v16, "g"

    const-string v17, "\u310d"

    const-string v18, "k"

    const-string v19, "\u310e"

    const-string v20, "h"

    const-string v21, "\u310f"

    const-string v22, "j"

    const-string v23, "\u3110"

    const-string v24, "q"

    const-string v25, "\u3111"

    const-string v26, "x"

    const-string v27, "\u3112"

    const-string v28, "zh"

    const-string v29, "\u3113"

    const-string v30, "ch"

    const-string v31, "\u3114"

    const-string v32, "sh"

    const-string v33, "\u3115"

    const-string v34, "r"

    const-string v35, "\u3116"

    const-string v36, "z"

    const-string v37, "\u3117"

    const-string v38, "c"

    const-string v39, "\u3118"

    const-string v40, "s"

    const-string v41, "\u3119"

    const-string v42, "y"

    const-string v43, "\u3127"

    const-string v44, "w"

    const-string v45, "\u3128"

    const-string v46, "a"

    const-string v47, "\u311a"

    const-string v48, "o"

    const-string v49, "\u311b"

    const-string v50, "e"

    const-string v51, "\u311c"

    const-string v52, "i"

    const-string v53, "\u3127"

    const-string v54, "u"

    const-string v55, "\u3128"

    const-string v56, "v"

    const-string v57, "\u3129"

    const-string v58, "ao"

    const-string v59, "\u3120"

    const-string v60, "ai"

    const-string v61, "\u311e"

    const-string v62, "an"

    const-string v63, "\u3122"

    const-string v64, "ang"

    const-string v65, "\u3124"

    const-string v66, "ou"

    const-string v67, "\u3121"

    const-string v68, "ong"

    const-string v69, "\u3128\u3125"

    const-string v70, "ei"

    const-string v71, "\u311f"

    const-string v72, "en"

    const-string v73, "\u3123"

    const-string v74, "eng"

    const-string v75, "\u3125"

    const-string v76, "er"

    const-string v77, "\u3126"

    const-string v78, "ie"

    const-string v79, "\u3127\u311d"

    const-string v80, "iu"

    const-string v81, "\u3127\u3121"

    const-string v82, "in"

    const-string v83, "\u3127\u3123"

    const-string v84, "ing"

    const-string v85, "\u3127\u3125"

    const-string v86, "iong"

    const-string v87, "\u3129\u3125"

    const-string v88, "ui"

    const-string v89, "\u3128\u311f"

    const-string v90, "un"

    const-string v91, "\u3128\u3123"

    const-string v92, "ue"

    const-string v93, "\u3129\u311d"

    const-string v94, "ve"

    const-string v95, "\u3129\u311d"

    const-string v96, "van"

    const-string v97, "\u3129\u3122"

    const-string v98, "vn"

    const-string v99, "\u3129\u3123"

    const-string v100, ""

    const-string v101, ""

    const-string v102, "zhi"

    const-string v103, "\u3113"

    const-string v104, "chi"

    const-string v105, "\u3114"

    const-string v106, "shi"

    const-string v107, "\u3115"

    const-string v108, "ri"

    const-string v109, "\u3116"

    const-string v110, "zi"

    const-string v111, "\u3117"

    const-string v112, "ci"

    const-string v113, "\u3118"

    const-string v114, "si"

    const-string v115, "\u3119"

    const-string v116, "yi"

    const-string v117, "\u3127"

    const-string v118, "ye"

    const-string v119, "\u3127\u311d"

    const-string v120, "you"

    const-string v121, "\u3127\u3121"

    const-string v122, "yin"

    const-string v123, "\u3127\u3123"

    const-string v124, "ying"

    const-string v125, "\u3127\u3125"

    const-string v126, "wu"

    const-string v127, "\u3128"

    const-string v128, "wei"

    const-string v129, "\u3128\u311f"

    const-string v130, "wen"

    const-string v131, "\u3128\u3123"

    const-string v132, "yu"

    const-string v133, "\u3129"

    const-string v134, "yue"

    const-string v135, "\u3129\u311d"

    const-string v136, "yuan"

    const-string v137, "\u3129\u3122"

    const-string v138, "yun"

    const-string v139, "\u3129\u3123"

    const-string v140, "yong"

    const-string v141, "\u3129\u3125"

    const-string v142, "ju"

    const-string v143, "\u3110\u3129"

    const-string v144, "jue"

    const-string v145, "\u3110\u3129\u311d"

    const-string v146, "juan"

    const-string v147, "\u3110\u3129\u3122"

    const-string v148, "jun"

    const-string v149, "\u3110\u3129\u3123"

    const-string v150, "qu"

    const-string v151, "\u3111\u3129"

    const-string v152, "que"

    const-string v153, "\u3111\u3129\u311d"

    const-string v154, "quan"

    const-string v155, "\u3111\u3129\u3122"

    const-string v156, "qun"

    const-string v157, "\u3111\u3129\u3123"

    const-string v158, "xu"

    const-string v159, "\u3112\u3129"

    const-string v160, "xue"

    const-string v161, "\u3112\u3129\u311d"

    const-string v162, "xuan"

    const-string v163, "\u3112\u3129\u3122"

    const-string v164, "xun"

    const-string v165, "\u3112\u3129\u3123"

    filled-new-array/range {v0 .. v165}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor;->sPinyinToZhuyin:[Ljava/lang/String;

    invoke-static {}, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor;->build()Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;

    move-result-object v0

    sput-object v0, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor;->sRoot:Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static build()Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;
    .registers 11

    const/4 v0, 0x0

    new-instance v1, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;-><init>(Lmiui/text/ChinesePinyinConverter$1;)V

    const-string v3, ""

    iput-object v3, v1, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;->output:Ljava/lang/String;

    const/4 v3, 0x0

    :goto_c
    sget-object v4, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor;->sPinyinToZhuyin:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_57

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1b

    const/4 v0, 0x1

    goto :goto_54

    :cond_1b
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    :goto_21
    if-ge v6, v7, :cond_4a

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    iget-object v9, v5, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;->children:Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;

    :goto_2d
    if-eqz v9, :cond_36

    iget-char v10, v9, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;->ch:C

    if-eq v10, v8, :cond_36

    iget-object v9, v9, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;->next:Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;

    goto :goto_2d

    :cond_36
    if-nez v9, :cond_46

    new-instance v10, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;

    invoke-direct {v10, v2}, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;-><init>(Lmiui/text/ChinesePinyinConverter$1;)V

    move-object v9, v10

    iput-char v8, v9, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;->ch:C

    iget-object v10, v5, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;->children:Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;

    iput-object v10, v9, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;->next:Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;

    iput-object v9, v5, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;->children:Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;

    :cond_46
    move-object v5, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :cond_4a
    iput-boolean v0, v5, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;->specials:Z

    sget-object v6, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor;->sPinyinToZhuyin:[Ljava/lang/String;

    add-int/lit8 v7, v3, 0x1

    aget-object v6, v6, v7

    iput-object v6, v5, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;->output:Ljava/lang/String;

    :goto_54
    add-int/lit8 v3, v3, 0x2

    goto :goto_c

    :cond_57
    return-object v1
.end method

.method private static convert(Ljava/lang/String;ILjava/lang/StringBuilder;)I
    .registers 10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, p1

    move v3, p1

    sget-object v4, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor;->sRoot:Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;

    :goto_9
    if-ge v3, v0, :cond_34

    if-eqz v4, :cond_34

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    iget-object v4, v4, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;->children:Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;

    :goto_17
    if-eqz v4, :cond_20

    iget-char v6, v4, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;->ch:C

    if-eq v6, v5, :cond_20

    iget-object v4, v4, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;->next:Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;

    goto :goto_17

    :cond_20
    if-eqz v4, :cond_31

    iget-object v6, v4, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;->output:Ljava/lang/String;

    if-eqz v6, :cond_31

    iget-boolean v6, v4, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;->specials:Z

    if-eqz v6, :cond_2e

    add-int/lit8 v6, v0, -0x1

    if-ne v3, v6, :cond_31

    :cond_2e
    move-object v1, v4

    add-int/lit8 v2, v3, 0x1

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_34
    if-eqz v1, :cond_3b

    iget-object v4, v1, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;->output:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3b
    sub-int v4, v2, p1

    return v4
.end method

.method public static convert(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/CharSequence;
    .registers 6

    if-eqz p0, :cond_29

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_29

    :cond_9
    if-nez p1, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object p1, v0

    goto :goto_16

    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_16
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1b
    if-eq v0, v1, :cond_28

    invoke-static {p0, v0, p1}, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor;->convert(Ljava/lang/String;ILjava/lang/StringBuilder;)I

    move-result v2

    if-gtz v2, :cond_26

    const-string v3, ""

    return-object v3

    :cond_26
    add-int/2addr v0, v2

    goto :goto_1b

    :cond_28
    return-object p1

    :cond_29
    :goto_29
    return-object p0
.end method
