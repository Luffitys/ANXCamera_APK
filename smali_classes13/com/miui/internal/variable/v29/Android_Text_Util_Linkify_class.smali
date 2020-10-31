.class public Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;
.super Lcom/miui/internal/variable/v27/Android_Text_Util_Linkify_class;
.source "Android_Text_Util_Linkify_class.java"

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/variable/v27/Android_Text_Util_Linkify_class;",
        "Lcom/miui/internal/variable/api/Overridable<",
        "Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Linkify.v29"

.field protected static final mApplyLink:Lmiui/reflect/Method;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    :try_start_0
    const-class v0, Landroid/text/util/Linkify;

    const-string v1, "applyLink"

    const-string v2, "(Ljava/lang/String;IILandroid/text/Spannable;Ljava/util/function/Function;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    goto :goto_15

    :catchall_b
    move-exception v0

    const-string v1, "Linkify.v29"

    const-string v2, "reflect applyLink failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    move-object v0, v1

    :goto_15
    sput-object v0, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;->mApplyLink:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/variable/v27/Android_Text_Util_Linkify_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class$1;-><init>(Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;JLandroid/text/util/Linkify;Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 10

    invoke-virtual/range {p0 .. p9}, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;->handleGatherLinks(JLandroid/text/util/Linkify;Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;JLandroid/text/util/Linkify;Landroid/text/Spannable;I)Z
    .registers 7

    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;->handleAddLinks(JLandroid/text/util/Linkify;Landroid/text/Spannable;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .registers 9

    sget-object v0, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;->mApplyLink:Lmiui/reflect/Method;

    if-eqz v0, :cond_23

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v3, v3, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applyLink: reflect failed, method not found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;

    return-object v0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;

    move-result-object v0

    return-object v0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;->bind(Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;)V

    return-void
.end method

.method protected callOriginalAddLinks(JLandroid/text/util/Linkify;Landroid/text/Spannable;I)Z
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;

    if-eqz v0, :cond_9

    invoke-interface {v0, p3, p4, p5}, Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;->addLinks(Landroid/text/util/Linkify;Landroid/text/Spannable;I)Z

    move-result v0

    return v0

    :cond_9
    invoke-super/range {p0 .. p5}, Lcom/miui/internal/variable/v27/Android_Text_Util_Linkify_class;->callOriginalAddLinks(JLandroid/text/util/Linkify;Landroid/text/Spannable;I)Z

    move-result v0

    return v0
.end method

.method protected callOriginalGatherLinks(JLandroid/text/util/Linkify;Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 19

    move-object v0, p0

    iget-object v1, v0, Lcom/miui/internal/variable/v29/Android_Text_Util_Linkify_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;

    if-eqz v1, :cond_13

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-interface/range {v1 .. v8}, Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;->gatherLinks(Landroid/text/util/Linkify;Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void

    :cond_13
    invoke-super/range {p0 .. p9}, Lcom/miui/internal/variable/v27/Android_Text_Util_Linkify_class;->callOriginalGatherLinks(JLandroid/text/util/Linkify;Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method

.method protected onClassProxyDisabled()V
    .registers 2

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Extension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method
