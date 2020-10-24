.class public Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;
.super Lcom/miui/internal/variable/Android_Text_Util_Linkify_class;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "Linkify.v16"

.field private static final mApplyLink:Lmiui/reflect/Method;

.field private static mDisabled:Z

.field private static final mEnd:Lmiui/reflect/Field;

.field private static final mGatherLinks:Lmiui/reflect/Method;

.field private static final mGatherMapLinks:Lmiui/reflect/Method;

.field private static final mPruneOverlaps:Lmiui/reflect/Method;

.field private static final mStart:Lmiui/reflect/Field;

.field private static final mUrl:Lmiui/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "Linkify.v16"

    const-class v1, Landroid/text/util/Linkify;

    const-string v2, "gatherMapLinks"

    const-string v3, "(Ljava/util/ArrayList;Landroid/text/Spannable;)V"

    invoke-static {v1, v2, v3}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mGatherMapLinks:Lmiui/reflect/Method;

    const-class v1, Landroid/text/util/Linkify;

    const-string v2, "pruneOverlaps"

    const-string v3, "(Ljava/util/ArrayList;)V"

    invoke-static {v1, v2, v3}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mPruneOverlaps:Lmiui/reflect/Method;

    const-string v1, "android.text.util.LinkSpec"

    const-string v2, "url"

    const-string v3, "Ljava/lang/String;"

    invoke-static {v1, v2, v3}, Lmiui/reflect/Field;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mUrl:Lmiui/reflect/Field;

    const-string v2, "start"

    const-string v3, "I"

    invoke-static {v1, v2, v3}, Lmiui/reflect/Field;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mStart:Lmiui/reflect/Field;

    const-string v2, "end"

    invoke-static {v1, v2, v3}, Lmiui/reflect/Field;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mEnd:Lmiui/reflect/Field;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mDisabled:Z

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/text/util/Linkify;

    const-string v3, "gatherLinks"

    const-string v4, "(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V"

    invoke-static {v2, v3, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    const-string v3, "reflect gatherLinks failed: "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    :goto_0
    sput-object v2, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mGatherLinks:Lmiui/reflect/Method;

    :try_start_1
    const-class v2, Landroid/text/util/Linkify;

    const-string v3, "applyLink"

    const-string v4, "(Ljava/lang/String;IILandroid/text/Spannable;)V"

    invoke-static {v2, v3, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    const-string v3, "reflect applyLink failed: "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    sput-object v1, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mApplyLink:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Text_Util_Linkify_class;-><init>()V

    return-void
.end method

.method static disable()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mDisabled:Z

    return-void
.end method

.method static enable()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mDisabled:Z

    return-void
.end method


# virtual methods
.method protected addEmailLinks(JLandroid/text/util/Linkify;Ljava/util/ArrayList;Landroid/text/Spannable;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 7

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const-string p2, "mailto:"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 2

    sget-object p0, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mApplyLink:Lmiui/reflect/Method;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, v0}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "applyLink: reflect failed, method not found"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public buildProxy()V
    .locals 2

    const-string v0, "addLinks"

    const-string v1, "(Landroid/text/Spannable;I)Z"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/util/ClassProxy;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    invoke-super {p0}, Lcom/miui/internal/variable/Android_Text_Util_Linkify_class;->buildProxy()V

    return-void
.end method

.method protected callOriginalAddLinks(JLandroid/text/util/Linkify;Landroid/text/Spannable;I)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->originalAddLinks(JLandroid/text/util/Linkify;Landroid/text/Spannable;I)Z

    move-result p0

    return p0
.end method

.method protected gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 2

    sget-object p0, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mGatherLinks:Lmiui/reflect/Method;

    if-eqz p0, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    const/4 p1, 0x5

    aput-object p6, v0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, v0}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "gatherLinks: reflect failed, method not found"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 7

    sget-object v3, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    const-string p3, "tel:"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    sget-object v6, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method

.method protected handle()V
    .locals 6

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->handleAddLinks(JLandroid/text/util/Linkify;Landroid/text/Spannable;I)Z

    return-void
.end method

.method protected handleAddLinks(JLandroid/text/util/Linkify;Landroid/text/Spannable;I)Z
    .locals 13

    move-object/from16 v9, p4

    const/4 v10, 0x0

    if-nez p5, :cond_0

    return v10

    :cond_0
    sget-boolean v0, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mDisabled:Z

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->callOriginalAddLinks(JLandroid/text/util/Linkify;Landroid/text/Spannable;I)Z

    move-result v0

    return v0

    :cond_1
    invoke-interface/range {p4 .. p4}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {v9, v10, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    array-length v1, v0

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    :goto_0
    if-ltz v1, :cond_2

    aget-object v2, v0, v1

    invoke-interface {v9, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    sget v0, Lmiui/text/util/Linkify;->TIME_PHRASES:I

    and-int v0, p5, v0

    if-eqz v0, :cond_3

    sget-object v3, Lmiui/util/Patterns;->CHINESE_TIME_PATTERN:Ljava/util/regex/Pattern;

    const-string v7, "time:"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v12

    move-object/from16 v2, p4

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    sget-object v3, Lmiui/util/Patterns;->ENGLISH_TIME_PATTERN:Ljava/util/regex/Pattern;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_3
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_4

    sget-object v3, Lmiui/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const-string v0, "http://"

    const-string v1, "https://"

    const-string v2, "rtsp://"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v12

    move-object/from16 v2, p4

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_4
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_5

    const-string v0, "mailto:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move-object v4, v12

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v8}, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->addEmailLinks(JLandroid/text/util/Linkify;Ljava/util/ArrayList;Landroid/text/Spannable;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    move v7, v0

    goto :goto_1

    :cond_5
    move v7, v10

    :goto_1
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_6

    sget-object v3, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    const-string v0, "tel:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    sget-object v6, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object v0, p0

    move-object v1, v12

    move-object/from16 v2, p4

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_6
    and-int/lit8 v0, p5, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mGatherMapLinks:Lmiui/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v12, v2, v10

    aput-object v9, v2, v11

    invoke-virtual {v0, v1, v1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_7
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mPruneOverlaps:Lmiui/reflect/Method;

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v12, v2, v10

    invoke-virtual {v0, v1, v1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    if-nez v7, :cond_8

    return v10

    :cond_8
    :goto_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_9

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mUrl:Lmiui/reflect/Field;

    invoke-virtual {v1, v0}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mStart:Lmiui/reflect/Field;

    invoke-virtual {v2, v0}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    sget-object v3, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mEnd:Lmiui/reflect/Field;

    invoke-virtual {v3, v0}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    move-object v3, p0

    invoke-virtual {p0, v1, v2, v0, v9}, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_9
    return v11
.end method

.method protected originalAddLinks(JLandroid/text/util/Linkify;Landroid/text/Spannable;I)Z
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v16.Android_Text_Util_Linkify_class.originalAddLinks(long, Linkify, Spannable, int)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
