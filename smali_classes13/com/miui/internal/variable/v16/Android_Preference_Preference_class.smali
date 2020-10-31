.class public Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;
.super Lcom/miui/internal/variable/Android_Preference_Preference_class;
.source "Android_Preference_Preference_class.java"

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/variable/Android_Preference_Preference_class;",
        "Lcom/miui/internal/variable/api/Overridable<",
        "Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;",
        ">;"
    }
.end annotation


# static fields
.field private static final mPreferenceScreen:Lmiui/reflect/Field;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Landroid/preference/PreferenceManager;

    const-string v1, "mPreferenceScreen"

    const-string v2, "Landroid/preference/PreferenceScreen;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->mPreferenceScreen:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Preference_Preference_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class$1;-><init>(Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;JLandroid/preference/Preference;Landroid/view/View;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->handleOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->handle_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;

    return-object v0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;

    move-result-object v0

    return-object v0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->bind(Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;)V

    return-void
.end method

.method protected callOriginalOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;

    if-eqz v0, :cond_8

    invoke-interface {v0, p3, p4}, Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;->onBindView(Landroid/preference/Preference;Landroid/view/View;)V

    return-void

    :cond_8
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->callOriginalOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V

    return-void
.end method

.method protected callOriginal_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-super/range {p0 .. p6}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->callOriginal_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method protected getPreferenceScreen(Landroid/preference/Preference;)Landroid/preference/PreferenceScreen;
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->mPreferenceScreen:Lmiui/reflect/Field;

    invoke-virtual {v1, v0}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v1

    :catch_d
    move-exception v0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "mPreferenceScreen"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onClassProxyDisabled()V
    .registers 2

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Extension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method
