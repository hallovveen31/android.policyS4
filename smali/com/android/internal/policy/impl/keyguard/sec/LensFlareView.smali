.class public Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;
.super Landroid/widget/FrameLayout;
.source "LensFlareView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;,
        Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;,
        Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseIn;,
        Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;
    }
.end annotation


# instance fields
.field private final AFFORDANCE_OFF_DURATION:I

.field private final AFFORDANCE_ON_DURATION:I

.field private final DBG:Z

.field private final FADEOUT_ANIMATION_DURATION:I

.field private final FOG_MAX_ALPHA:F

.field private final FOG_ON_DURATION:I

.field private final HEXAGON_CIRCLE_TOTAL:I

.field private HEXAGON_TAP_TOTAL:I

.field private HEXAGON_TOTAL:I

.field private final HOVER_DURATION:I

.field private final HOVER_LIGHT_IN_DURATION:I

.field private final HOVER_LIGHT_OUT_DURATION:I

.field private MAX_ALPHA_DISTANCE:I

.field private final SHOW_ANIMATION_DURATION:I

.field private final TAG:Ljava/lang/String;

.field private final TAP_ANIMATION_DURATION:I

.field private final TAP_AREA_RADIUS:I

.field private final UNLOCK_ANIMATION_DURATION:I

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private final X_OFFSET:I

.field private Y_OFFSET:I

.field private affordanceAnimationValue:F

.field private affordanceOffAnimator:Landroid/animation/ValueAnimator;

.field private affordanceOnAnimator:Landroid/animation/ValueAnimator;

.field private affordancePoint:Landroid/graphics/Point;

.field private affordanceRunnable:Ljava/lang/Runnable;

.field private createdDelaytime:J

.field private currentX:F

.field private currentY:F

.field private defaultConfig:Landroid/graphics/Bitmap$Config;

.field private defaultInSampleSize:I

.field private distance:D

.field private distancePerMaxAlpha:F

.field private fadeOutAnimator:Landroid/animation/ValueAnimator;

.field private fadeoutAnimationValue:F

.field private fogAlpha:F

.field private fogAnimationValue:F

.field private fogOnAnimator:Landroid/animation/ValueAnimator;

.field private hexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private hexagonDistance:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private hexagonRes:[I

.field private hexagonRotation:[I

.field private hexagonScale:[F

.field private hoverAnimator:Landroid/animation/ValueAnimator;

.field private hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private hoverLightAnimationValue:F

.field private hoverLightInAnimator:Landroid/animation/ValueAnimator;

.field private hoverLightOutAnimator:Landroid/animation/ValueAnimator;

.field private hoverX:F

.field private hoverY:F

.field private isBeforeInit:Z

.field private isPlayAffordance:Z

.field private isSoundEnable:Z

.field private isSystemSoundChecked:Z

.field private isTouched:Z

.field private lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private lightObj:Landroid/widget/FrameLayout;

.field private lightTap:Landroid/widget/FrameLayout;

.field private longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private mContext:Landroid/content/Context;

.field private mFirstCreatedRunnable:Ljava/lang/Runnable;

.field private objAlpha:F

.field private objAnimationValue:F

.field private objAnimator:Landroid/animation/ValueAnimator;

.field private particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private randomRotation:F

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private screenHeight:I

.field private screenWidth:I

.field private showStartX:F

.field private showStartY:F

.field private sound_tap:I

.field private sound_unlock:I

.field private soundpool:Landroid/media/SoundPool;

.field private tapAnimationValue:F

.field private tapAnimator:Landroid/animation/ValueAnimator;

.field private tapHexRandomPoint:[Landroid/graphics/Point;

.field private tapHexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private tapHexagonScale:[F

.field private unlockAnimationValue:F

.field private unlockAnimator:Landroid/animation/ValueAnimator;

.field private vignetting:Landroid/widget/ImageView;

.field private vignettingAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/16 v1, 0x1f4

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 205
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 130
    const-string v0, "LensFlare"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->TAG:Ljava/lang/String;

    .line 134
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_CIRCLE_TOTAL:I

    .line 136
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TAP_TOTAL:I

    .line 138
    const v0, 0x3f19999a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->FOG_MAX_ALPHA:F

    .line 142
    const/16 v0, 0x1770

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->SHOW_ANIMATION_DURATION:I

    .line 144
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->TAP_ANIMATION_DURATION:I

    .line 146
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->UNLOCK_ANIMATION_DURATION:I

    .line 148
    const v0, 0x186a0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HOVER_DURATION:I

    .line 150
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HOVER_LIGHT_IN_DURATION:I

    .line 152
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HOVER_LIGHT_OUT_DURATION:I

    .line 154
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->AFFORDANCE_ON_DURATION:I

    .line 156
    const/16 v0, 0x44c

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->AFFORDANCE_OFF_DURATION:I

    .line 158
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->TAP_AREA_RADIUS:I

    .line 160
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->FOG_ON_DURATION:I

    .line 162
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->FADEOUT_ANIMATION_DURATION:I

    .line 164
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->X_OFFSET:I

    .line 166
    const/16 v0, -0x50

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    .line 170
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    .line 178
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isSoundEnable:Z

    .line 180
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->DBG:Z

    .line 182
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    .line 184
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    .line 186
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->createdDelaytime:J

    .line 188
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->UNLOCK_SOUND_PLAY_TIME:J

    .line 190
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordancePoint:Landroid/graphics/Point;

    .line 196
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isPlayAffordance:Z

    .line 198
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isTouched:Z

    .line 200
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultConfig:Landroid/graphics/Bitmap$Config;

    .line 202
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->defaultInSampleSize:I

    .line 207
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    .line 208
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    .line 209
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    .line 210
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimationValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedDragPos()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedHover()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightAnimationValue:F

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedHoverLight()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceAnimationValue:F

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceAnimationValue:F

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedAffordance()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Landroid/animation/Animator;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->playUnlockAffordance()V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isPlayAffordance:Z

    return p1
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogAnimationValue:F

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lensFlareinit()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedDragAlpha()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedTap()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeoutAnimationValue:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedFadeOut()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimationValue:F

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedUnlock()V

    return-void
.end method

.method private animatedAffordance()V
    .locals 2

    .prologue
    .line 732
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceAnimationValue:F

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getCorrectAlpha(F)F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogAlpha:F

    .line 733
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 734
    return-void
.end method

.method private animatedDragAlpha()V
    .locals 5

    .prologue
    .line 697
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogAnimationValue:F

    const/high16 v3, 0x3f80

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distancePerMaxAlpha:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getCorrectAlpha(F)F

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogAlpha:F

    .line 698
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distancePerMaxAlpha:F

    const/high16 v3, 0x4040

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getCorrectAlpha(F)F

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAlpha:F

    .line 699
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distancePerMaxAlpha:F

    const v3, 0x3fa66666

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getCorrectAlpha(F)F

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignettingAlpha:F

    .line 701
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogAlpha:F

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 702
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignetting:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignettingAlpha:F

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 704
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    if-ge v1, v2, :cond_0

    .line 705
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aget-object v0, v2, v1

    .line 706
    .local v0, hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAlpha:F

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 704
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 708
    .end local v0           #hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    :cond_0
    return-void
.end method

.method private animatedDragPos()V
    .locals 12

    .prologue
    const/high16 v6, 0x3f80

    .line 681
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distancePerMaxAlpha:F

    mul-float/2addr v0, v6

    add-float v11, v6, v0

    .line 682
    .local v11, scale:F
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v0, v11}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 683
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v0, v11}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 684
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimationValue:F

    neg-float v0, v0

    const/high16 v2, 0x41f0

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distancePerMaxAlpha:F

    const/high16 v3, 0x4320

    mul-float/2addr v2, v3

    sub-float v10, v0, v2

    .line 685
    .local v10, rotation:F
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setRotation(F)V

    .line 687
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 689
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    if-ge v9, v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aget-object v1, v0, v9

    .line 691
    .local v1, hex:Landroid/widget/ImageView;
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentY:F

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonDistance:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonScale:[F

    aget v7, v0, v9

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonRotation:[I

    aget v8, v0, v9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFFFI)V

    .line 689
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 694
    .end local v1           #hex:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private animatedFadeOut()V
    .locals 5

    .prologue
    .line 711
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogAlpha:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeoutAnimationValue:F

    mul-float/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 712
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignetting:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignettingAlpha:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeoutAnimationValue:F

    mul-float/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 714
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    if-ge v1, v2, :cond_0

    .line 715
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aget-object v0, v2, v1

    .line 716
    .local v0, hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAlpha:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeoutAnimationValue:F

    mul-float/2addr v2, v3

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 714
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 718
    .end local v0           #hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    :cond_0
    return-void
.end method

.method private animatedHover()V
    .locals 6

    .prologue
    const/high16 v5, 0x4040

    const/high16 v4, 0x4000

    .line 624
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverX:F

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setX(F)V

    .line 625
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverY:F

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setY(F)V

    .line 626
    return-void
.end method

.method private animatedHoverLight()V
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightAnimationValue:F

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 630
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightAnimationValue:F

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 631
    return-void
.end method

.method private animatedTap()V
    .locals 19

    .prologue
    .line 635
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    const/high16 v16, 0x3f00

    cmpg-float v15, v15, v16

    if-gez v15, :cond_0

    const/high16 v1, 0x3f80

    .line 637
    .local v1, alpha:F
    :goto_0
    const v15, 0x3e4ccccd

    const v16, 0x3f4ccccd

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v2, v15, v16

    .line 638
    .local v2, distanceScale:F
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TAP_TOTAL:I

    if-ge v4, v15, :cond_1

    .line 639
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aget-object v3, v15, v4

    .line 640
    .local v3, hex:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 642
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexagonScale:[F

    aget v15, v15, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    move/from16 v16, v0

    const v17, 0x3f4ccccd

    mul-float v16, v16, v17

    const v17, 0x3f333333

    add-float v16, v16, v17

    mul-float v10, v15, v16

    .line 643
    .local v10, scale:F
    invoke-virtual {v3, v10}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 644
    invoke-virtual {v3, v10}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 646
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexRandomPoint:[Landroid/graphics/Point;

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v2

    add-float v13, v15, v16

    .line 647
    .local v13, tx:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexRandomPoint:[Landroid/graphics/Point;

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v2

    add-float v14, v15, v16

    .line 649
    .local v14, ty:F
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getWidth()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    sub-float/2addr v13, v15

    .line 650
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getHeight()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    .line 652
    invoke-virtual {v3, v13}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setX(F)V

    .line 653
    invoke-virtual {v3, v14}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setY(F)V

    .line 638
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 635
    .end local v1           #alpha:F
    .end local v2           #distanceScale:F
    .end local v3           #hex:Landroid/widget/ImageView;
    .end local v4           #i:I
    .end local v10           #scale:F
    .end local v13           #tx:F
    .end local v14           #ty:F
    :cond_0
    const/high16 v15, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    move/from16 v16, v0

    const/high16 v17, 0x3f00

    sub-float v16, v16, v17

    const/high16 v17, 0x4000

    mul-float v16, v16, v17

    sub-float v1, v15, v16

    goto/16 :goto_0

    .line 657
    .restart local v1       #alpha:F
    .restart local v2       #distanceScale:F
    .restart local v4       #i:I
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    const v16, 0x3fe66666

    mul-float v11, v15, v16

    .line 658
    .local v11, tapAniamationParticleValue:F
    const/high16 v15, 0x3f00

    cmpg-float v15, v11, v15

    if-gez v15, :cond_2

    const/high16 v15, 0x3f80

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getCorrectAlpha(F)F

    move-result v7

    .line 659
    .local v7, prticleAalpha:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    const v16, 0x3f99999a

    mul-float v6, v15, v16

    .line 660
    .local v6, particleScale:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v7}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 661
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v15, v6}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 662
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v15, v6}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 665
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    const v16, 0x3fb33333

    mul-float v12, v15, v16

    .line 666
    .local v12, tapAniamationRingValue:F
    const/high16 v15, 0x3f00

    cmpg-float v15, v12, v15

    if-gez v15, :cond_3

    const/high16 v15, 0x3f80

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getCorrectAlpha(F)F

    move-result v8

    .line 667
    .local v8, ringAlpha:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 668
    const/high16 v15, 0x3f00

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    move/from16 v16, v0

    add-float v9, v15, v16

    .line 669
    .local v9, ringScale:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v15, v9}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 670
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v15, v9}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 673
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 674
    const/high16 v15, 0x3fc0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    move/from16 v16, v0

    const/high16 v17, 0x4000

    mul-float v16, v16, v17

    add-float v5, v15, v16

    .line 675
    .local v5, longScale:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v15, v5}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 676
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v15, v5}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 677
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->randomRotation:F

    move/from16 v16, v0

    const/high16 v17, 0x41f0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setRotation(F)V

    .line 678
    return-void

    .line 658
    .end local v5           #longScale:F
    .end local v6           #particleScale:F
    .end local v7           #prticleAalpha:F
    .end local v8           #ringAlpha:F
    .end local v9           #ringScale:F
    .end local v12           #tapAniamationRingValue:F
    :cond_2
    const/high16 v15, 0x3f80

    const/high16 v16, 0x3f00

    sub-float v16, v11, v16

    const/high16 v17, 0x4000

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    goto/16 :goto_2

    .line 666
    .restart local v6       #particleScale:F
    .restart local v7       #prticleAalpha:F
    .restart local v12       #tapAniamationRingValue:F
    :cond_3
    const/high16 v15, 0x3f80

    const/high16 v16, 0x3f00

    sub-float v16, v12, v16

    const/high16 v17, 0x4000

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    goto :goto_3
.end method

.method private animatedUnlock()V
    .locals 9

    .prologue
    const/high16 v4, 0x4000

    const/high16 v3, 0x3f80

    const/high16 v2, 0x3f00

    .line 722
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimationValue:F

    const v1, 0x3fa66666

    mul-float/2addr v0, v1

    add-float v8, v3, v0

    .line 723
    .local v8, rainbowScale:F
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimationValue:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimationValue:F

    mul-float v7, v0, v4

    .line 725
    .local v7, rainbowAlpha:F
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v0, v7}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 726
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentY:F

    const v6, 0x3ecccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 727
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 728
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 729
    return-void

    .line 723
    .end local v7           #rainbowAlpha:F
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimationValue:F

    sub-float/2addr v0, v2

    mul-float/2addr v0, v4

    sub-float v7, v3, v0

    goto :goto_0
.end method

.method private calculateDistance(FF)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/high16 v6, 0x4000

    .line 746
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    sub-float v0, p1, v2

    .line 747
    .local v0, diffX:F
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    sub-float v1, p2, v2

    .line 748
    .local v1, diffY:F
    float-to-double v2, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v4, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distance:D

    .line 749
    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distance:D

    double-to-float v2, v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->MAX_ALPHA_DISTANCE:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distancePerMaxAlpha:F

    .line 750
    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animator"

    .prologue
    .line 834
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 836
    :cond_0
    return-void
.end method

.method private cleanUpAllViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 807
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 808
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 809
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 810
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 811
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 812
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignetting:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 814
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    if-ge v1, v2, :cond_0

    .line 815
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aget-object v0, v2, v1

    .line 816
    .local v0, hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 814
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 818
    .end local v0           #hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TAP_TOTAL:I

    if-ge v1, v2, :cond_1

    .line 819
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aget-object v0, v2, v1

    .line 820
    .restart local v0       #hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 818
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 823
    .end local v0           #hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 824
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 825
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 826
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 827
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 828
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 829
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 830
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 831
    return-void
.end method

.method private getCorrectAlpha(F)F
    .locals 3
    .parameter "alpha"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 737
    cmpg-float v2, p1, v0

    if-gtz v2, :cond_1

    move p1, v0

    .line 742
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 739
    .restart local p1
    :cond_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    move p1, v1

    .line 740
    goto :goto_0
.end method

.method private hoverEnter(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 602
    const/4 v0, 0x0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverX:F

    .line 603
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverY:F

    .line 605
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 606
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 607
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 608
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 609
    return-void
.end method

.method private hoverExit()V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 618
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 619
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 620
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 621
    return-void
.end method

.method private hoverMove(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 612
    const/4 v0, 0x0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverX:F

    .line 613
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverY:F

    .line 614
    return-void
.end method

.method private lensFlareinit()V
    .locals 3

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 216
    const-string v1, "LensFlare"

    const-string v2, "this.getChildCount() == 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 218
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->screenWidth:I

    .line 219
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->screenHeight:I

    .line 221
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->screenWidth:I

    const/16 v2, 0x438

    if-ne v1, v2, :cond_1

    .line 222
    const/16 v1, 0x5dc

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->MAX_ALPHA_DISTANCE:I

    .line 228
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setLayout()V

    .line 229
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setHover()V

    .line 230
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setHexagon()V

    .line 231
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setTapHexagon()V

    .line 232
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAnimator()V

    .line 234
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    .line 235
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    .line 236
    return-void

    .line 224
    .restart local v0       #dm:Landroid/util/DisplayMetrics;
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    .line 225
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->MAX_ALPHA_DISTANCE:I

    goto :goto_0
.end method

.method private playSound(I)V
    .locals 7
    .parameter "soundId"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 530
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isSoundEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    move v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 533
    :cond_0
    return-void
.end method

.method private playUnlockAffordance()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f80

    .line 860
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    if-eqz v0, :cond_0

    .line 876
    :goto_0
    return-void

    .line 862
    :cond_0
    const-string v0, "LensFlare"

    const-string v1, "playUnlockAffordance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordancePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    .line 864
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordancePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    .line 866
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setHexagonRandomTarget(Z)V

    .line 868
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 869
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 870
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 871
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 873
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 874
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 875
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private setAlphaAndVisibility(Landroid/view/View;F)V
    .locals 2
    .parameter "view"
    .parameter "alpha"

    .prologue
    const/16 v0, 0x8

    .line 795
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_2

    .line 796
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 797
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 804
    :cond_1
    :goto_0
    return-void

    .line 800
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 801
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 802
    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private setAnimator()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x1f4

    const/4 v4, 0x2

    .line 417
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimator:Landroid/animation/ValueAnimator;

    .line 418
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 419
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 428
    new-array v0, v4, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    .line 429
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 430
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 431
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 439
    new-array v0, v4, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    .line 440
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 441
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 442
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 450
    new-array v0, v4, [F

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 451
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 452
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 453
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 461
    new-array v0, v4, [F

    fill-array-data v0, :array_4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimator:Landroid/animation/ValueAnimator;

    .line 462
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 463
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 464
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 472
    new-array v0, v4, [F

    fill-array-data v0, :array_5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverAnimator:Landroid/animation/ValueAnimator;

    .line 473
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 474
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverAnimator:Landroid/animation/ValueAnimator;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 475
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/32 v1, 0x186a0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 476
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 483
    new-array v0, v4, [F

    fill-array-data v0, :array_6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    .line 484
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;->OUT:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    const/high16 v3, 0x4100

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 485
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 486
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$7;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 493
    new-array v0, v4, [F

    fill-array-data v0, :array_7

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    .line 494
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 495
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 496
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$8;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 504
    new-array v0, v4, [F

    fill-array-data v0, :array_8

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    .line 505
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 506
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 507
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$9;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$9;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 518
    new-array v0, v4, [F

    fill-array-data v0, :array_9

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    .line 519
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x44c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 521
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$10;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$10;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 527
    return-void

    .line 417
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 428
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x19t 0x3ft
    .end array-data

    .line 439
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 450
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 461
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 472
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 483
    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 493
    :array_7
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 504
    :array_8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x19t 0x3ft
    .end array-data

    .line 518
    :array_9
    .array-data 0x4
        0x9at 0x99t 0x19t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private setCenterPos(Landroid/view/View;FFFFF)V
    .locals 4
    .parameter "view"
    .parameter "fromX"
    .parameter "fromY"
    .parameter "x"
    .parameter "y"
    .parameter "distanceScale"

    .prologue
    const/high16 v3, 0x4000

    .line 754
    sub-float v2, p4, p2

    mul-float/2addr v2, p6

    add-float v0, v2, p2

    .line 755
    .local v0, tx:F
    sub-float v2, p5, p3

    mul-float/2addr v2, p6

    add-float v1, v2, p3

    .line 757
    .local v1, ty:F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 758
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 760
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 761
    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 762
    invoke-virtual {p1, v1}, Landroid/view/View;->setY(F)V

    .line 764
    :cond_0
    return-void
.end method

.method private setCenterPos(Landroid/view/View;FFFFFFI)V
    .locals 18
    .parameter "view"
    .parameter "fromX"
    .parameter "fromY"
    .parameter "x"
    .parameter "y"
    .parameter "distanceScale"
    .parameter "scale"
    .parameter "rotation"

    .prologue
    .line 768
    const/high16 v12, 0x3f00

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distance:D

    double-to-float v13, v13

    const/high16 v14, 0x4434

    div-float/2addr v13, v14

    const/high16 v14, 0x3f00

    mul-float/2addr v13, v14

    add-float v8, v12, v13

    .line 769
    .local v8, scaleByDistance:F
    const/high16 v12, 0x3f00

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimationValue:F

    const/high16 v14, 0x3f00

    mul-float/2addr v13, v14

    add-float v7, v12, v13

    .line 770
    .local v7, scaleByAnimationValue:F
    mul-float v12, p7, v8

    mul-float v9, v12, v7

    .line 771
    .local v9, tscale:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setScaleX(F)V

    .line 772
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setScaleY(F)V

    .line 774
    const/high16 v12, 0x3f00

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimationValue:F

    const/high16 v14, 0x3f00

    mul-float/2addr v13, v14

    add-float v2, v12, v13

    .line 775
    .local v2, distanceScaleByAnimation:F
    sub-float v12, p4, p2

    mul-float v12, v12, p6

    mul-float/2addr v12, v2

    add-float v10, v12, p2

    .line 776
    .local v10, tx:F
    sub-float v12, p5, p3

    mul-float v12, v12, p6

    mul-float/2addr v12, v2

    add-float v11, v12, p3

    .line 778
    .local v11, ty:F
    if-eqz p8, :cond_0

    .line 779
    const/high16 v12, 0x4396

    mul-float v1, p7, v12

    .line 780
    .local v1, dist:F
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distance:D

    double-to-float v12, v12

    const/high16 v13, 0x447a

    div-float/2addr v12, v13

    mul-float v12, v12, p7

    mul-float v6, v12, p7

    .line 781
    .local v6, rotationByDistance:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimationValue:F

    const/high16 v13, 0x3f80

    mul-float v5, v12, v13

    .line 782
    .local v5, rotationByAnimation:F
    move/from16 v0, p8

    int-to-double v12, v0

    const-wide v14, 0x400921fb54442d18L

    mul-double/2addr v12, v14

    const-wide v14, 0x4066800000000000L

    div-double/2addr v12, v14

    float-to-double v14, v6

    add-double/2addr v12, v14

    float-to-double v14, v5

    add-double v3, v12, v14

    .line 783
    .local v3, rad:D
    float-to-double v12, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    float-to-double v14, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v12, v12

    add-float v10, v12, p4

    .line 784
    float-to-double v12, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    neg-double v14, v14

    mul-double/2addr v12, v14

    float-to-double v14, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v12, v12

    add-float v11, v12, p5

    .line 787
    .end local v1           #dist:F
    .end local v3           #rad:D
    .end local v5           #rotationByAnimation:F
    .end local v6           #rotationByDistance:F
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    sub-float/2addr v10, v12

    .line 788
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    .line 790
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setX(F)V

    .line 791
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setY(F)V

    .line 792
    return-void
.end method

.method private setHexagon()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    .line 297
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonRes:[I

    .line 304
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonRes:[I

    array-length v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    .line 306
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    new-array v3, v3, [Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    .line 307
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonRotation:[I

    .line 308
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonDistance:Ljava/util/ArrayList;

    .line 309
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonScale:[F

    .line 311
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    if-ge v1, v3, :cond_0

    .line 312
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;-><init>(Landroid/content/Context;)V

    .line 313
    .local v0, hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonRes:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setImageResource(I)V

    .line 314
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4034

    mul-double/2addr v3, v5

    double-to-float v2, v3

    .line 315
    .local v2, rotation:F
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 316
    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setRotation(F)V

    .line 317
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightObj:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0, v7, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 318
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aput-object v0, v3, v1

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    .end local v0           #hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    .end local v2           #rotation:F
    :cond_0
    return-void

    .line 297
    :array_0
    .array-data 0x4
        0x64t 0x4t 0x8t 0x1t
        0x66t 0x4t 0x8t 0x1t
        0x64t 0x4t 0x8t 0x1t
        0x66t 0x4t 0x8t 0x1t
        0x65t 0x4t 0x8t 0x1t
        0x65t 0x4t 0x8t 0x1t
    .end array-data
.end method

.method private setHexagonRandomTarget(Z)V
    .locals 17
    .parameter "isForUnlockAffordance"

    .prologue
    .line 349
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TAP_TOTAL:I

    new-array v11, v11, [Landroid/graphics/Point;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexRandomPoint:[Landroid/graphics/Point;

    .line 350
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TAP_TOTAL:I

    new-array v11, v11, [F

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexagonScale:[F

    .line 351
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide v13, 0x4076800000000000L

    mul-double/2addr v11, v13

    double-to-int v11, v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->randomRotation:F

    .line 354
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TAP_TOTAL:I

    if-ge v4, v11, :cond_1

    .line 355
    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide v13, 0x4076800000000000L

    mul-double/2addr v11, v13

    double-to-int v11, v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->randomRotation:F

    .line 356
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide v13, 0x4082c00000000000L

    mul-double/2addr v11, v13

    double-to-int v7, v11

    .line 357
    .local v7, randomDistance:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->randomRotation:F

    invoke-static {v11}, Landroid/util/FloatMath;->cos(F)F

    move-result v11

    int-to-float v12, v7

    mul-float/2addr v11, v12

    float-to-int v9, v11

    .line 358
    .local v9, tx:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->randomRotation:F

    invoke-static {v11}, Landroid/util/FloatMath;->sin(F)F

    move-result v11

    int-to-float v12, v7

    mul-float/2addr v11, v12

    float-to-int v10, v11

    .line 360
    .local v10, ty:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexRandomPoint:[Landroid/graphics/Point;

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    aput-object v12, v11, v4

    .line 361
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexagonScale:[F

    const v12, 0x3e99999a

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    const-wide v15, 0x3fe99999a0000000L

    mul-double/2addr v13, v15

    double-to-float v13, v13

    add-float/2addr v12, v13

    aput v12, v11, v4

    .line 362
    const/high16 v11, 0x3f00

    const/high16 v12, 0x3f00

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    double-to-float v13, v13

    mul-float/2addr v12, v13

    add-float v1, v11, v12

    .line 363
    .local v1, alpha:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aget-object v11, v11, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 354
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 367
    .end local v1           #alpha:F
    .end local v7           #randomDistance:I
    .end local v9           #tx:I
    .end local v10           #ty:I
    :cond_1
    if-nez p1, :cond_6

    .line 368
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonDistance:Ljava/util/ArrayList;

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonDistance:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 369
    :cond_2
    const v8, 0x3e4ccccd

    .line 370
    .local v8, startDistance:F
    const v2, 0x3e75c28f

    .line 371
    .local v2, distanceGap:F
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    if-ge v5, v11, :cond_3

    .line 372
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    double-to-float v11, v11

    const/high16 v12, 0x3f00

    sub-float/2addr v11, v12

    const v12, 0x3ecccccd

    mul-float v6, v11, v12

    .line 373
    .local v6, random:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonDistance:Ljava/util/ArrayList;

    int-to-float v12, v5

    mul-float/2addr v12, v2

    add-float/2addr v12, v8

    add-float/2addr v12, v6

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 375
    .end local v6           #random:F
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonDistance:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 377
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    if-ge v4, v11, :cond_5

    .line 378
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aget-object v3, v11, v4

    .line 379
    .local v3, hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    add-int/lit8 v11, v11, 0x0

    if-ge v4, v11, :cond_4

    .line 380
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonRotation:[I

    const/4 v12, 0x0

    aput v12, v11, v4

    .line 381
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonScale:[F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonDistance:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    const v13, 0x3e4ccccd

    add-float/2addr v11, v13

    aput v11, v12, v4

    .line 386
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonScale:[F

    aget v11, v11, v4

    invoke-virtual {v3, v11}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 387
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonScale:[F

    aget v11, v11, v4

    invoke-virtual {v3, v11}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 377
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 383
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonRotation:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide v14, 0x4076800000000000L

    mul-double/2addr v12, v14

    double-to-int v12, v12

    aput v12, v11, v4

    .line 384
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonScale:[F

    const v12, 0x3f19999a

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    const-wide/high16 v15, 0x3ff0

    mul-double/2addr v13, v15

    double-to-float v13, v13

    add-float/2addr v12, v13

    aput v12, v11, v4

    goto :goto_3

    .line 389
    .end local v3           #hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->randomRotation:F

    invoke-virtual {v11, v12}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setRotation(F)V

    .line 391
    .end local v2           #distanceGap:F
    .end local v5           #j:I
    .end local v8           #startDistance:F
    :cond_6
    return-void
.end method

.method private setHover()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 289
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    const v1, 0x1080467

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setImageResource(I)V

    .line 291
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;II)V

    .line 294
    return-void
.end method

.method private setLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 241
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignetting:Landroid/widget/ImageView;

    .line 242
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 243
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 244
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignetting:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108046d

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 245
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignetting:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 246
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignetting:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 247
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignetting:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;)V

    .line 250
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    .line 251
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    const v2, 0x1080468

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setImageResource(I)V

    .line 252
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;II)V

    .line 253
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 256
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightObj:Landroid/widget/FrameLayout;

    .line 257
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightObj:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;)V

    .line 260
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightTap:Landroid/widget/FrameLayout;

    .line 261
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightTap:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;)V

    .line 264
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    .line 265
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    const v2, 0x108046c

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setImageResource(I)V

    .line 266
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;II)V

    .line 267
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 270
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    .line 271
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    const v2, 0x1080469

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setImageResource(I)V

    .line 272
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;II)V

    .line 273
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 276
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    .line 277
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    const v2, 0x108046a

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setImageResource(I)V

    .line 278
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;II)V

    .line 279
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 282
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    .line 283
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    const v2, 0x108046b

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setImageResource(I)V

    .line 284
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;II)V

    .line 285
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 286
    return-void
.end method

.method private setSound()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 394
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->stopReleaseSound()V

    .line 397
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 399
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 401
    .local v2, result:I
    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 405
    :goto_0
    if-ne v2, v4, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isSystemSoundChecked:Z

    .line 407
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    if-nez v3, :cond_0

    .line 408
    new-instance v3, Landroid/media/SoundPool;

    const/16 v6, 0xa

    invoke-direct {v3, v6, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    .line 409
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    const v6, 0x1100005

    invoke-virtual {v3, v5, v6, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->sound_tap:I

    .line 410
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    const v6, 0x1100006

    invoke-virtual {v3, v5, v6, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->sound_unlock:I

    .line 411
    const-string v3, "LensFlare"

    const-string v4, "LensFlare sound : load"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    return-void

    .line 402
    :catch_0
    move-exception v1

    .line 403
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    move v3, v5

    .line 405
    goto :goto_1
.end method

.method private setTapHexagon()V
    .locals 10

    .prologue
    const/4 v9, -0x2

    .line 323
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TAP_TOTAL:I

    new-array v5, v5, [Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    .line 324
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TAP_TOTAL:I

    if-ge v1, v5, :cond_0

    .line 325
    rem-int/lit8 v2, v1, 0x3

    .line 326
    .local v2, index:I
    const/4 v4, 0x0

    .line 327
    .local v4, resource:I
    packed-switch v2, :pswitch_data_0

    .line 338
    :goto_1
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;-><init>(Landroid/content/Context;)V

    .line 339
    .local v0, hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setImageResource(I)V

    .line 340
    const/4 v5, 0x0

    invoke-direct {p0, v0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 341
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide v7, 0x4076800000000000L

    mul-double/2addr v5, v7

    double-to-int v3, v5

    .line 342
    .local v3, randomRotation:I
    int-to-float v5, v3

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setRotation(F)V

    .line 343
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightTap:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v0, v9, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 344
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aput-object v0, v5, v1

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    .end local v0           #hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    .end local v3           #randomRotation:I
    :pswitch_0
    const v4, 0x1080464

    .line 330
    goto :goto_1

    .line 332
    :pswitch_1
    const v4, 0x1080466

    .line 333
    goto :goto_1

    .line 335
    :pswitch_2
    const v4, 0x1080465

    goto :goto_1

    .line 346
    .end local v2           #index:I
    .end local v4           #resource:I
    :cond_0
    return-void

    .line 327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private stopReleaseSound()V
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 962
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 964
    :cond_0
    return-void
.end method

.method private stopUnlockAffordance()V
    .locals 2

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 880
    const-string v0, "LensFlare"

    const-string v1, "remove delayed UnlockAffordance callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 882
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceRunnable:Ljava/lang/Runnable;

    .line 884
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    .line 939
    const-string v0, "LensFlare"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    if-eqz v0, :cond_0

    .line 957
    :goto_0
    return-void

    .line 941
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cleanUpAllViews()V

    .line 942
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isPlayAffordance:Z

    .line 944
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->stopReleaseSound()V

    .line 945
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$13;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$13;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 956
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 984
    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 990
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    if-eqz v0, :cond_0

    .line 992
    const-string v0, "LensFlare"

    const-string v1, "Return handleTouchEvent!!! Becuase isBeforeInit is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    :goto_0
    return v2

    .line 996
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1007
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverExit()V

    goto :goto_0

    .line 998
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverEnter(FF)V

    goto :goto_0

    .line 1002
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverMove(FF)V

    goto :goto_0

    .line 996
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 889
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    if-eqz v0, :cond_1

    .line 891
    const-string v0, "LensFlare"

    const-string v1, "Return handleTouchEvent!!! Becuase isBeforeInit is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_0
    :goto_0
    return v2

    .line 895
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    .line 896
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->show(FF)V

    goto :goto_0

    .line 897
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-nez v0, :cond_3

    .line 899
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->move(FF)V

    goto :goto_0

    .line 900
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v2, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 902
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hide()V

    goto :goto_0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 909
    const-string v0, "LensFlare"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlock()V

    .line 911
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isTouched:Z

    .line 585
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 586
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 587
    return-void
.end method

.method public move(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isTouched:Z

    if-nez v0, :cond_1

    .line 570
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->show(FF)V

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    const/4 v0, 0x0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentX:F

    .line 573
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentY:F

    .line 574
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentX:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentY:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->calculateDistance(FF)V

    .line 576
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 577
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedDragAlpha()V

    .line 578
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedDragPos()V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 968
    const-string v0, "LensFlare"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    if-eqz v0, :cond_0

    .line 974
    :goto_0
    return-void

    .line 971
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cleanUpAllViews()V

    .line 972
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isPlayAffordance:Z

    .line 973
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->stopUnlockAffordance()V

    goto :goto_0
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 978
    const-string v0, "LensFlare"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isPlayAffordance:Z

    .line 980
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 915
    const-string v0, "LensFlare"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isPlayAffordance:Z

    .line 918
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    if-eqz v0, :cond_0

    .line 920
    const-string v0, "LensFlare"

    const-string v1, "isBeforeInit is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 923
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$12;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$12;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    .line 930
    const-string v0, "LensFlare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this.postDelayed, createdDelaytime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->createdDelaytime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->createdDelaytime:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 934
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setSound()V

    .line 935
    return-void
.end method

.method public show(FF)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    const/high16 v6, 0x3f80

    .line 536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isTouched:Z

    .line 537
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->stopUnlockAffordance()V

    .line 539
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distance:D

    .line 540
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distancePerMaxAlpha:F

    .line 541
    add-float v0, p1, v2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    .line 542
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    .line 543
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentX:F

    .line 544
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentY:F

    .line 545
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setHexagonRandomTarget(Z)V

    .line 547
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedDragPos()V

    .line 549
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 550
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 551
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 552
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 554
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 555
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 556
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 557
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 558
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 559
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 561
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 562
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 563
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 565
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->sound_tap:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->playSound(I)V

    .line 566
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 4
    .parameter "startDelay"
    .parameter "rect"

    .prologue
    .line 840
    const-string v0, "LensFlare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUnlockAffordance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startDelay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isPlayAffordance:Z

    if-eqz v0, :cond_0

    .line 843
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->stopUnlockAffordance()V

    .line 844
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordancePoint:Landroid/graphics/Point;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 845
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordancePoint:Landroid/graphics/Point;

    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 847
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$11;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceRunnable:Ljava/lang/Runnable;

    .line 855
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 857
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 5

    .prologue
    .line 590
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    if-eqz v1, :cond_0

    .line 591
    const-string v1, "LensFlare"

    const-string v2, "unlock before init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lensFlareinit()V

    .line 599
    :goto_0
    return-void

    .line 594
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->sound_unlock:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->playSound(I)V

    .line 595
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentY:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentX:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L

    mul-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L

    div-double/2addr v1, v3

    double-to-float v1, v1

    const/high16 v2, 0x4220

    sub-float v0, v1, v2

    .line 596
    .local v0, degree:F
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setRotation(F)V

    .line 597
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method
