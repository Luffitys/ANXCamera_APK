.class public Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class$Factory;
.super Lcom/miui/internal/variable/AbsClassFactory;
.source "Android_View_Accessibility_AccessibilityEvent_class.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class$Factory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Android_View_Accessibility_AccessibilityEvent_class:Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class$Factory$1;

    invoke-direct {v0}, Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class$Factory$1;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class$Factory;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/miui/internal/variable/AbsClassFactory;-><init>()V

    const-string v0, "Android_View_Accessibility_AccessibilityEvent_class"

    nop

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class$Factory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class;

    iput-object v1, p0, Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class$Factory;->Android_View_Accessibility_AccessibilityEvent_class:Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class$Factory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class$Factory;
    .registers 1

    sget-object v0, Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class$Factory;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class$Factory;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class$Factory;->Android_View_Accessibility_AccessibilityEvent_class:Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class$Factory;->get()Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class;

    move-result-object v0

    return-object v0
.end method
