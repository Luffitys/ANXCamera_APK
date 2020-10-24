.class public Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;
.super Lcom/miui/internal/variable/v27/Android_Text_Util_Linkify_class;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# static fields
.field private static final TAG:Ljava/lang/String; = "Linkify.v29"

.field protected static final mApplyLink:Lmiui/reflect/Method;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-class v0, Landroid/text/util/Linkify;

    const-string v1, "applyLink"

    const-string v2, "(Ljava/lang/String;IILandroid/text/Spannable;Ljava/util/function/Function;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "Linkify.v29"

    const-string v2, "reflect applyLink failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;->mApplyLink:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/variable/v27/Android_Text_Util_Linkify_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class$1;-><init>(Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;JLandroid/text/util/Linkify;Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 0

    invoke-virtual/range {p0 .. p9}, Lcom/miui/internal/variable/Android_Text_Util_Linkify_class;->handleGatherLinks(JLandroid/text/util/Linkify;Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;JLandroid/text/util/Linkify;Landroid/text/Spannable;I)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->handleAddLinks(JLandroid/text/util/Linkify;Landroid/text/Spannable;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 2

    sget-object p0, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;->mApplyLink:Lmiui/reflect/Method;

    if-eqz p0, :cond_0

    const/4 v0, 0x5

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

    const/4 p1, 0x4

    const/4 p2, 0x0

    aput-object p2, v0, p1

    invoke-virtual {p0, p2, p2, v0}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "applyLink: reflect failed, method not found"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;

    return-object p0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;

    move-result-object p0

    return-object p0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;->bind(Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;)V

    return-void
.end method

.method protected callOriginalAddLinks(JLandroid/text/util/Linkify;Landroid/text/Spannable;I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p3, p4, p5}, Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;->addLinks(Landroid/text/util/Linkify;Landroid/text/Spannable;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->callOriginalAddLinks(JLandroid/text/util/Linkify;Landroid/text/Spannable;I)Z

    move-result p0

    return p0
.end method

.method protected callOriginalGatherLinks(JLandroid/text/util/Linkify;Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 8

    move-object v0, p0

    iget-object v1, v0, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;

    if-eqz v1, :cond_0

    move-object v0, v1

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-interface/range {v0 .. v7}, Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;->gatherLinks(Landroid/text/util/Linkify;Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void

    :cond_0
    invoke-super/range {p0 .. p9}, Lcom/miui/internal/variable/Android_Text_Util_Linkify_class;->callOriginalGatherLinks(JLandroid/text/util/Linkify;Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method

.method protected onClassProxyDisabled()V
    .locals 1

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/AbstractExtension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method
