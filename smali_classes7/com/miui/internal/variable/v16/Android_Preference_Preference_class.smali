.class public Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;
.super Lcom/miui/internal/variable/Android_Preference_Preference_class;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# static fields
.field private static final mPreferenceScreen:Lmiui/reflect/Field;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/preference/PreferenceManager;

    const-string v1, "mPreferenceScreen"

    const-string v2, "Landroid/preference/PreferenceScreen;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->mPreferenceScreen:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Preference_Preference_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class$1;-><init>(Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;JLandroid/preference/Preference;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->handleOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->handle_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;

    return-object p0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;

    move-result-object p0

    return-object p0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->bind(Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;)V

    return-void
.end method

.method protected callOriginalOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p3, p4}, Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;->onBindView(Landroid/preference/Preference;Landroid/view/View;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->callOriginalOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V

    return-void
.end method

.method protected callOriginal_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->callOriginal_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method protected getPreferenceScreen(Landroid/preference/Preference;)Landroid/preference/PreferenceScreen;
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p0

    sget-object p1, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->mPreferenceScreen:Lmiui/reflect/Field;

    invoke-virtual {p1, p0}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/preference/PreferenceScreen;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p1

    const-string v0, "mPreferenceScreen"

    invoke-virtual {p1, v0, p0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected onClassProxyDisabled()V
    .locals 1

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/AbstractExtension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method
